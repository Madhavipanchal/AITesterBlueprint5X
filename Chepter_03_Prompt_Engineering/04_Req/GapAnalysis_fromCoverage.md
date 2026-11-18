# Context
Act as a Senior QA Lead and Test Coverage Analyst with expertise in the specified business domain and experience in enterprise software testing.
I need to perform a structured Coverage Gap Analysis using the following supporting documents:

Requirement Document (Reference/Baseline): [PDF/DOCX/Jira ticket/User story/Feature description/BRD/FRS/Other relevant project artifacts]
<<< Provide Test SCenario and/Or Test case document>>>

Test Scenario / Test Case Document (Document Under Evaluation):[Test Scenario Excel/CSV/ Test Case Excel/CSV / Test Management Tool export/ Jira/Xray/Zephyr test records/ Other relevant QA documentation ]
Your responsibilities are to:
-Understand the supplied requirements and their expected behaviour.
-Extract and assign unique IDs to requirements where IDs are not available.
-Review the available test scenarios and test cases.
-Map each requirement to its corresponding test scenarios and test cases.
-Identify fully covered, partially covered and uncovered requirements.
-Identify missing positive, negative, boundary, alternate and exception scenarios wherever supported by the requirements.
-Identify duplicate, incorrectly mapped or untraceable test scenarios and test cases.
-Provide a structured Test Coverage Gap Analysis Report.

# Limit
-Focus only on the supplied requirement document and the corresponding test scenario/test case document.
-Do not expand into unrelated features, modules or functionalities.
-Do not introduce new business requirements.
-Evaluate the test scenarios and test cases only against the available requirement baseline.
-Preserve original requirement wording wherever quoted.
-Do not silently modify or reinterpret approved requirements.
-If an interpretation is necessary, present it separately.
-Use the requirement document as the source of expected behaviour.
-If documents are incomplete, unreadable or contain unavailable attachments, report the limitation.
-Do not treat unavailable test records as confirmed missing test coverage.
-Mention the affected pages, sheets, sections or references wherever possible.
-Do not slightly modify or interpret approved requirements.

# Example
## Example 1: Requirement-to-Test Coverage Mapping
REQ-EMP-001:"Users should be able to select a department while creating an employee."
Available Test Scenarios:
TS-001: Verify that a user can select a department while creating an employee.

Expected Coverage Analysis:
Requirement ID | Test Scenario ID |Coverage Status |Observation
REQ-EMP-001 |TS-001 |Partially Covered / Cannot Determine | The basic department selection flow is represented. Mandatory/optional behaviour and single/multiple selection are not defined in the requirement, so they cannot be treated as confirmed missing coverage.

Potential QA Clarifications:
Is department selection mandatory or optional?
Can an employee belong to multiple departments?
Does the requirement define behaviour when no department is available?

Important: Do not report these unspecified behaviours as confirmed test coverage gaps until the requirement is clarified.

## Example 2: Missing Negative Scenario:
REQ-LOGIN-001:
"The application must allow registered users to log in using their registered email address and password. If invalid credentials are provided, the application must display an appropriate error message."

Available Test Scenarios:
TS-001: Verify successful login with valid credentials.

Expected Gap Finding:
GAP-TC-001
Related Requirement: REQ-LOGIN-001
Gap Category: Missing Negative Scenario
Gap Description: The requirement explicitly defines behaviour for invalid credentials, but no corresponding negative login scenario is available.
Clarification Question for QA: Why is the invalid-credentials scenario missing from the test scenario document?
Coverage Status: Partially Covered
Severity: High (provisional, subject to business impact confirmation).

# Action

Review both supplied documents systematically.

The Requirement Document is the baseline. The Test Scenario/Test Case Document is the document being evaluated.

## 1. Requirement and Test Extraction
- Extract all relevant requirements, test scenarios and test cases.
- Preserve existing IDs and original wording.
- Generate temporary unique IDs only when IDs are unavailable.
- Capture source references such as document name, page, section, worksheet or row wherever available.

## 2. Requirement-to-Test Mapping
- Map each requirement to its corresponding test scenarios and test cases.
- Assess whether specified functionality, business rules, validations and conditions are adequately covered.
- Assign one coverage status to each requirement:

| Coverage Status | Meaning |
|---|---|
| Fully Covered | All specified behaviours and conditions are covered. |
| Partially Covered | Some specified behaviours or conditions are missing. |
| Not Covered | No corresponding test scenario or test case exists. |
| Not Applicable | Coverage is not applicable, with justification. |
| Cannot Determine | Available information is insufficient to assess coverage. |

## 3. Coverage Gap Identification

Identify applicable gaps such as:

- Requirement not covered or partially covered.
- Missing positive, negative, boundary, alternate or exception scenarios.
- Missing validation, workflow or integration coverage.
- Duplicate test scenarios/test cases.
- Test cases without requirement traceability.
- Incorrect or inconsistent requirement-to-test mapping.
- Potential domain-specific coverage concerns.

Identify missing scenarios only when supported by the requirements. Separate potential QA recommendations from confirmed coverage gaps.

## 4. Detailed Coverage Gap Register

For each identified gap, provide:

| Field | Description |
|---|---|
| Gap ID | Unique ID, e.g. GAP-TC-001. |
| Requirement ID | Related original or temporary requirement ID. |
| Test Scenario/Test Case ID | Related existing test IDs, if available. |
| Source Reference | Requirement and test document references. |
| Original Requirement | Exact relevant requirement wording. |
| Existing Coverage | Currently available scenarios/test cases. |
| Gap Category | Applicable coverage gap category. |
| Gap Description | What is missing, partially covered or incorrectly mapped. |
| Recommended Coverage | Missing scenario-level coverage, without inventing expected results. |
| Clarification | Question for QA or BA/PO, as applicable. |
| Potential Impact | Possible business or functional impact. |
| Coverage Status | Applicable coverage classification. |
| Severity | Critical, High, Medium, Low or Cannot Determine, with justification. |

## 5. Final Report Preparation

Prepare the report with the following sections:

1. Document Information
2. Analysis Scope and Limitations
3. Requirement-to-Test Traceability Matrix
4. Coverage Gap Summary
5. Detailed Coverage Gap Register
6. Duplicate and Unmapped Test Records
7. Potential QA Recommendations
8. Clarification Questions for QA/BA/PO
9. Previous Scope/Dependency Validation (if applicable)
10. Final QA Coverage Review Summary

---

# R — Review

Before finalizing the report, validate the following:

1. **Traceability:** Every relevant requirement is reviewed and mapped to available test scenarios/test cases. Preserve original IDs and source references.
2. **Coverage Accuracy:** Correctly classify fully covered, partially covered, uncovered and undeterminable requirements. Do not mark partial coverage as complete.
3. **Scenario Completeness:** Check applicable positive, negative, boundary, alternate, exception and validation scenarios against the requirements.
4. **Test Documentation Quality:** Identify duplicate, unmapped or incorrectly mapped test records. Do not invent missing test steps, test data or expected results.
5. **Gap Classification and Severity:** Ensure each finding has an appropriate category, status and justified severity. Keep these classifications separate.
6. **Clarification and Scope:** Direct test coverage questions to QA and unclear requirement questions to BA/PO. Do not introduce assumptions or unsupported domain practices.
7. **Final Report Quality:** Ensure findings are clear, non-duplicated, traceable and consistent. Verify that summary counts match the detailed Gap Register.
**Final Instruction:** Produce a draft Test Coverage Gap Analysis Report for QA review. Clearly distinguish confirmed coverage gaps from potential recommendations and items requiring clarification.