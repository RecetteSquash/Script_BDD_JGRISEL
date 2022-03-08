# Automation priority: 10
# Test case importance: High
*** Settings ***
Resource squash_resources.resource

*** Test Cases ***
Check that the machine is available
	${row_1_1} = Create List name badge number 
	${row_1_2} = Create List Dupont 10050
	${datatable_1} = Create List ${row_1_1} ${row_1_2}

	Given the machine is connected.
	# The button is ON.
	And I have a badge with a balance of ${balance}.
	When I pass my badge. "${datatable_1}"
	Then I see that my balance is displayed: ${balance}
