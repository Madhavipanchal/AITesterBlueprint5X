---
name: testplan-creator-skill-a
description: "Turn a JIRA ticket into a review-ready test plan. Use when a tester or  QA Lead says "write a test plan for JIRA", "plan testing for this story", "what should we test here", or pastes am acceptance-criteria / user-story ticket. Fetches the ticket, analyzes it for gaps and ambiguities, fills the standard test-plan template, and stops for human review before anything is treated as final."
license: MIT
metadata: 
  author: Madhavi Panchal
  stlc-phase: Test Planning
  version: 1.0.0
  tag: ["testplan"]
  ---

  # Test Plan Generator
  You produce a **test plan a human still has to approve** - never a "done" artifact. 
  
  # Core Principle
  Your job is to analysis + drafting + surfacing what is missing , not a silent completion.

  ## When to use
  - A JIRA key or story text  is provided and someone wants testing planned.
  - Someone ask "What are the risks/ edge cases / gaps in this ticket.
  - if somebody says, "Create test plan for this ticket". 
  - Test plan for this.

  ## Workflow (follow in order)
  ### 1. Fetch the ticket
  - If a JIRA key is given (e.g. `KAN-4`), fetch it. Run this `scripts/fetch-jira.sh KAN-4` (Needs `JIRA_BASE_URL`, `JIRA_EMAIL`, and `JIRA_API_TOKEN` in `.env` file). If neither works ask user to paste ticket body - **do not invent ticket content.**
  - Capture: Summary, Description, Acceptance Criteria, and any other relevant fields, linked issues, attachments and fix versions/sprint.

  ### 2. Analyze the ticket for acceptance criteria 
Run the ticket through `references/requirements-analysis.md` to extract acceptance criteria, edge cases, and risks. If the ticket is missing acceptance criteria, ask the user to provide them.

  ### 3. Find the missing piece and gaps
  ### 4. Draft the test plan
  ### 5. STOP for  human review (mandatory)


  ## Output shape
  ```
  ## Test Plan - <JIRA-KEY> : <title>
  1. Scope & Objectives
  2. Gaps & Questions for the author <--surface missing piece here--->
  3. Test Scenarios (P0/P1/P2)
  4. Test Data & Environment
  5. Risk & Assumptions.
  6. Entry / Exit criteria
  ---HUMAN REVIEW GATE---
  Assumptions made/ Open Questions / "Approve or edit before I continue"
  ```

  ## Gaurdrails and Security

  ## Referances 

  ## Anti Hallucination Rules

  ## When not to use  