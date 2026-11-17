#!/usr/bin/env bash
set -euo pipefail

usage() {
  printf 'Usage: %s <ISSUE-KEY>\n' "${0##*/}" >&2
  printf 'Required environment: JIRA_BASE_URL, JIRA_API_TOKEN\n' >&2
  printf 'Optional environment: JIRA_EMAIL (defaults to mahi.panchal1991+jira@gmail.com)\n' >&2
}

if [[ $# -ne 1 ]]; then
  usage
  exit 2
fi

issue_key=$1
if [[ ! "$issue_key" =~ ^[A-Za-z0-9_]+-[0-9]+$ ]]; then
  printf 'Error: invalid Jira issue key: %s\n' "$issue_key" >&2
  exit 2
fi

: "${JIRA_BASE_URL:?Set JIRA_BASE_URL to your Jira Cloud site, e.g. https://your-company.atlassian.net}"
: "${JIRA_API_TOKEN:?Set JIRA_API_TOKEN to your Atlassian API token}"
JIRA_EMAIL=${JIRA_EMAIL:-'mahi.panchal1991+jira@gmail.com'}

if [[ "$JIRA_BASE_URL" != https://* ]]; then
  printf 'Error: JIRA_BASE_URL must use HTTPS.\n' >&2
  exit 2
fi

base_url=${JIRA_BASE_URL%/}
host=${base_url#https://}
host=${host%%/*}
host=${host%%:*}
if [[ -z "$host" || "$host" == *'@'* ]]; then
  printf 'Error: JIRA_BASE_URL must be a valid HTTPS Jira site URL.\n' >&2
  exit 2
fi

# Keep the token out of curl's command-line arguments and remove the temporary
# credentials file on exit. Atlassian tokens do not contain whitespace.
umask 077
netrc_file=$(mktemp)
trap 'rm -f "$netrc_file"' EXIT HUP INT TERM
printf 'machine %s login %s password %s\n' "$host" "$JIRA_EMAIL" "$JIRA_API_TOKEN" > "$netrc_file"

curl --silent --show-error --fail \
  --netrc-file "$netrc_file" \
  --header 'Accept: application/json' \
  "$base_url/rest/api/3/issue/$issue_key"
