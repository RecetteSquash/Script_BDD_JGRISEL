*** Settings ***
Documentation    JMA testingfullline
...
...              JMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfulllineJMAtestingfullline
...
...
...
...              2eme iteration
Metadata         ID                           387634
Metadata         Reference                    JMA testingfullline2nditeration
Metadata         Automation priority          6
Metadata         Test case importance         High
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
JMA testingfullline
    [Documentation]    JMA testingfullline


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_387634_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_387634_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_387634_SETUP_VALUE} =    Get Variable Value    ${TEST_387634_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_387634_SETUP_VALUE is not None
        Run Keyword    ${TEST_387634_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_387634_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_387634_TEARDOWN}.

    ${TEST_387634_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_387634_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_387634_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_387634_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
