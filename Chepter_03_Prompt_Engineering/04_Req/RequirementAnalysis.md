**Context:**  

I need to perform a structured Requirement Analysis for the provided requirement document [PDF, DOCX, Jira ticket, user story, feature description, or other project artifact].

Act as a Senior QA Lead and Requirement Analyst with expertise in the specified business domain and experience in enterprise software testing.

Your objective is to:
- Understand the business requirement.
- Extract and classify individual requirements.
- Identify functional requirements and business rules.
- Identify missing, ambiguous, conflicting, duplicate, and potentially biased requirements.
- Identify dependencies on existing features or previously analyzed requirements.
- Identify clarification questions that must be raised with the Business Analyst, Product Owner, or client.

Use the following project details when available. If any mandatory project information is missing, do not assume or invent it. Mark it as "Not Provided" and raise it as a clarification point wherever it affects the analysis
- Project Name: [Project Name]
- Domain: [Domain]
- Feature/Module: [Feature Name]
- Requirement Source: [Document/Jira ID/Version]
- Analysis Purpose: Prepare a draft Requirement Analysis Document for QA review.

**Limits:**  
- Focus on given requirement only.
- Do not go outside of the requirement given. 
- Focus on the current project, current feature, and current domain only. 

- Use only the requirements supplied above.
- Use placeholders for credentials; never include real passwords.
- Do not invent exact validation messages or password policies.
- Set execution status to “Not Run.”
- If an expected result depends on missing requirements, mark it “Requires clarification.”
- Requirement gaps should be identified, not automatically filled using assumptions or domain knowledge.

For example:
Requirement: Email and password are mandatory.

AI should not assume:
- Password must contain eight characters.
- Email must be in a particular format.
- Account gets locked after five failed attempts.

**Examples:**  
Use this filled example as the format:

Example A: Requirement input
Sample requirement :
REQ-LOGIN-001
The application should allow registered users to log in using their email address and password.

REQ-LOGIN-002 :
Both email and password are mandatory.

REQ-LOGIN-003:
Upon successful authentication, the user should be redirected to the authenticated dashboard.

Example B: Expected analysis output
Confirmed requirement
REQ-LOGIN-001:
Requirement: Registered users can log in using email and password.
Analysis: Requirement is identified. Authentication behavior for invalid credentials is not specified.

Requirement gap
GAP-LOGIN-001:
Question: What should happen when a user enters an incorrect password?

Status: Requires Clarification.
Impact: Cannot determine the expected negative-login behavior when a user enters an incorrect password.

**Action:**  
Create a proper requirement document based on the given template <<Provide template path here>>. 
You need to:
- Identify the requirement and the positive scenarios, including the requirement gaps.
- If needed, highlight the requirement as missing or unclear.
- Highlight if there is any bias with the domain knowledge connected with the requirements.
- Provide a neat, clear requirement with proper traceability in the doc format.
This would not be a final version. This will be a draft version. Definitely, a human review would be required for the final version.
-  Give an output in proper formatting. When needed, there should be a proper column mentioning the requirement: covered, unclear, biased, duplicate. Also, define a proper severity level, like critical. 
- Highlight if we have already done a requirement analysis through this for another ticket PDF or document for the same domain and same project. If the requirement is connected with the previous one, you can also mention those things connected with the previous one, so we can identify and try to connect with the previous version or previous functionality. 
- When you show any gap, highlight it with the red color in the action column or whatever different column we have mentioned, and mark it as a gap. 
Requirement Analysis workflow
1. Document understanding   
   Identify project, module, feature, version, scope and document source.
2. Requirement extraction   
   Extract individual requirements and assign unique IDs.
3. Requirement classification   
   Functional, business rules, validation, dependency and non-functional requirements, where specified.
4. Gap analysis   
   Identify missing, unclear, conflicting, duplicate and potentially biased requirements.
5. Domain review   
   Identify domain-specific concerns without treating assumptions as approved requirements.
6. Traceability analysis
   Link source requirements, identified gaps, related existing functionality and test cases.
7. Test case preparation   
   For Requirement Analysis, We stick to that only, Not to perform Test case Prepartion untill instruction given by user.
8. Document generation   
   Prepare a structured draft using the supplied template.
9. Final quality review   
   Check completeness, consistency, traceability and unsupported assumptions.

-Do not mix requirement status with severity.

For example:
- Requirement status: Unclear.
- Gap severity: High.
- Action: Clarification required.

**Review and Quality Validation:**

Before generating the final draft, validate the following:

1. Requirement Completeness:
   - Every extracted requirement is represented.
   - No supplied requirement is silently omitted.

2. Clarity:
   - Each requirement is independently understandable.
   - Ambiguous or incomplete statements are flagged.
   - Unknown system behavior is not assumed.

3. Consistency:
   - Identify conflicting requirements.
   - Identify duplicate or overlapping requirements.
   - Check consistency across related features.

4. Domain Alignment:
   - Evaluate requirements against relevant domain knowledge.
   - Separate domain recommendations from approved business requirements.
   - Highlight unsupported assumptions or potentially biased decisions.

5. Traceability:
   - Each requirement must have a unique ID.

6. Testability:
   - Confirm that expected results are objectively verifiable.

7. Document Quality:
   - Use clear, professional and consistent terminology.
   - Avoid duplicate entries.
   - Highlight gaps and clarification points.
   - Include a review summary and outstanding action items.

8. Human Approval:
   - Mark the document as DRAFT.
   - Do not treat AI-generated recommendations as approved requirements.
   - Highlight all items requiring Business Analyst, Product Owner or client confirmation.