**Context**
I need to perform a structured GAP Analysis for the provided requirement document [PDF, DOCX, Jira ticket, user story, feature description, or other project artifact].

Act as a Senior QA Lead and Requirement Analyst with expertise in the specified business domain and experience in enterprise software testing.

Your objective is to:
- Understand the current business requirement and provide the list of the gaps identified from this requirement document. 


**Limit**
- focus only on the given requirement.
- Do not go outside of the requirement.
- Make sure those are aligned with the domain specified. 
- Focus only on finding the gaps from the requirement. Do not consider the positive or working cases. Find only gaps from the requirements. 
- Ensure the AI identifies genuine gaps without creating unnecessary gaps from its own assumptions.
- The original requirement wording:
- Do not slightly modify or interpret approved requirements.
- Use domain knowledge only to identify potential concerns and classification questions.
- Do not introduce industry standard practice as a confirmed business requirement.
- Do not classify every unspecified detail as a confirmed gap.
- Explain why the missing information matters.
- Analyze only the space supplied project feature and scope.
- Use previous project discussion or document only when they are available and clearly relevant to the same project.
- Otherwise, mark as a finding requirement. 

**Example**
Input requirement:
"Users should be able to select a department while creating an employee."

Expected gap findings:
Gap	Category	Explanation
GAP-001	Undefined Validation	It is not specified whether department selection is mandatory or optional.
GAP-002	Ambiguous Requirement	It is not specified whether users can select one department or multiple departments.
GAP-003	Missing Information	It is not specified what happens if no department is available for selection.

Clarification questions:
1. Is department selection mandatory?
2. Can an employee belong to multiple departments?
3. What should happen when no department is configured?

**Action**
From the document given, you need to go through the document, extract all the requirements, and trace them. Go one by one, and for each of them, identify:
- What information is missing from the requirement?
- What business rules are not defined?
- What is ambiguous or conflicting?
- What clarifications do we need to ask the BA or PO?
- Which rule is not clear, or by which rule it provides unclear actions (for example, whether it should be a dropdown or multivalued, whether it is optional or mandatory)?
# Review each requirement and make sure you have a list of standard gap categories as below:
- Missing information
- Ambiguous requirement
- Undefined business rule
- Conflict requirement
- Duplicate requirement
- Incomplete workflow
- Undefined validation
- Unclear dependency
- Potential domain concern         

For each identified gap, provide:

Unique Gap ID
Related Requirement ID or source reference
Original requirement wording or relevant excerpt
Gap Category
Gap Description — explain exactly what is missing, unclear or conflicting.
Clarification Question — what should be confirmed with BA/PO/client?
Potential Business or Functional Impact
Gap Status
Gap Severity and its justification

# Gap Status
Open
Requires Clarification
Requires Validation Against Existing Scope
Resolved — only when confirmation or supporting evidence is available.

# Gap Severity
Critical
High
Medium
Low
Cannot Determine

You can provide such a status for each gap found in the requirement and mark it as a gap.
- Do not assume anything. If you are also not clear, you can mark it as a gap or unclear from your side and give a proper statement.
- If you find the current requirement is from the existing project and if you have that project's knowledge from our past interaction, and if we have anything in the requirement that is related to a previous conversation or a previous project, you can mention that one differently. You can also mark them as "need to recheck or validate from the previous" or "check with the existing scopre from project." 
- Write each gap and its bifurcation in neat, clear, and easy-to-understand language. 

# Prepare a structured Gap Analysis Report containing:

Document Information
Analysis Scope and Limitations
Gap Summary — count by category and severity
Detailed Gap Register
Previous Scope/Dependency Validation (where applicable)
Clarification Questions for BA/PO
Final QA Gap Review Summary

Do not include positive scenarios, test cases or test execution results.

**Review**
- Make sure each point or each rule has been covered from the requirement. 
- Proper status has been assigned to the gaps according to the result.
- Gaps should be in clear, neat, and in easy language. 