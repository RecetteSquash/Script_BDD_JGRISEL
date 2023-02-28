*** Settings ***
Documentation    Vérifier que la machine est disponible
...
...              Ce cas de test vérifie la disponibilité de la machine
Metadata         ID                           387622
Metadata         Reference                    VERIF_001
Metadata         Automation priority          10
Metadata         Test case importance         Very high
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Vérifier que la machine est disponible
    [Documentation]    Vérifier que la machine est disponible

    Given la machine est branchée.
    When je passe mon badge.
    Then je constate que mon solde s'affiche.


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_387622_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_387622_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =           Get Variable Value    ${TEST_SETUP}
    ${TEST_387622_SETUP_VALUE} =    Get Variable Value    ${TEST_387622_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_387622_SETUP_VALUE is not None
        Run Keyword    ${TEST_387622_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_387622_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_387622_TEARDOWN}.

    ${TEST_387622_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_387622_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =           Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_387622_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_387622_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
