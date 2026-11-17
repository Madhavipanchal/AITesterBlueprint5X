---
name: "testplan-creator-skill"
description: "Based on my template, which i am going to give him, it is going to create a test plan according to my company."
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

# Test Plan Creator

Your task is to create test plan based on the knowledge shared by user. Make sure that you use a proper templates that we have mentioned in the below comments. 

## Core Principles

1. use information which is present or given by user only
2. Do not reinvent or invent anything apart from whatever the user has mentioned and whatever you know from the information which is given.

## When to Use

- whenever somebody has given you a PRD (Which is  a product requirement document) or has given you a trigger  to create a test plan for this requirement, use this skill.
- create a test plan for x.

## Output
- output should be in /output folder with testplan prefix.
- should be in PDF or docs, html

## Security & Safety 
1. Make sure that test plan does not have any personal information or any risk-related things.
