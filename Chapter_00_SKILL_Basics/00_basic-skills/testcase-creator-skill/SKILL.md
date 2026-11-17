---
name: "testcase-creator-skill"
description: "Based on my template, which i am going to give him, it is going to create a test case according to my company."
version: 1.0.0
author: "Madhavi"
license: MIT
tags: 
  - testplan
testingTypes: [e2e, visual]
frameworks: [playwright]
languages: [typescript, javascript]
domains: [web]
agents: [claude-code, cursor, github-copilot, windsurf, codex, aider, continue, cline, zed, bolt]
---

# Test case Creator

Your task is to create test cases based on the story shared by user. Make sure that you use a proper templates that we have mentioned in the below comments. 

## Core Principles

1. use information which is present or given by user only
2. Do not reinvent or invent anything apart from whatever the user has mentioned and whatever you know from the information which is given.
3. cover Positive, negative, edge cases scenarios.

## When to Use

- whenever somebody has given you a Requirement OR Story and tell to create test case or has given you a trigger  to create a test case for this requirement, use this skill.
- create a test cases for x.

## Output
- output should be in /output folder
- should be in Excel

## Security & Safety 
1. Make sure that test case does not have any personal information or any risk-related things.
2. Avoid using actual Phone number, Debit/credit details or any kind of personal info.
