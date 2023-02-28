*** Settings ***
Documentation    JMA CT14
Metadata         ID                           387633
Metadata         Reference                    JMA CT14
Metadata         Automation priority          2
Metadata         Test case importance         Medium
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
JMA CT14
    [Documentation]    JMA CT14

    Given yhd,ttyk
    Given dtrn
    Then bgnfd


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_387633_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_387633_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_387633_SETUP_VALUE} =    Get Variable Value    ${TEST_387633_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_387633_SETUP_VALUE is not None
        Run Keyword    ${TEST_387633_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_387633_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_387633_TEARDOWN}.

    ${TEST_387633_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_387633_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_387633_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_387633_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
