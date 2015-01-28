Feature: Sample of cucumber output


	Scenario: Successful, incomplete, and failed tests
		When the output is green the test passed successfully
		When the output is yellow the test has not yet been written
		When the output is blue the test has been skipped
	Scenario: Failed test
		When the output is red the test has failed

	Scenario: Text output
		When I give you the spiel
