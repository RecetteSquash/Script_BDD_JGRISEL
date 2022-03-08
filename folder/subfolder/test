# Automation priority: 10
# Importance of the test case: High
# language: en
Functionality: Check that the machine is available

	Scenario: Check that the machine is available
		Given that the machine is connected.
			#The button is on.
		And I have a badge with a balance of <balance>.
		When I swipe my badge.
			| name | badge number |
			| Dupont | 10050 |
		Then I see that my balance is displayed: <balance>.
