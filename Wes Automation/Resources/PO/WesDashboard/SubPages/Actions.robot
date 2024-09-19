*** Settings ***
Resource    ../../../Common.robot

*** Variables ***
${ACTIONS_MENU_BUTTON}     xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[4]/div[2]/table/tbody/tr[1]/td[9]/button
${ACCEPT_ACTION_BUTTON}      xpath=//p[contains(.,'Accept')]
${CONFIRM_ACTION_BUTTON}        xpath=//button[contains(.,'Confirm')]
${EDIT_ACTION_BUTTON}        xpath=//p[contains(.,'Edit')]

*** Keywords ***
Open Actions Menu
    wait until element is visible       ${ACTIONS_MENU_BUTTON}      ${WAIT_TIME}
    click element       ${ACTIONS_MENU_BUTTON}

Click On Accept Action
    wait until element is visible       ${ACCEPT_ACTION_BUTTON}      ${WAIT_TIME}
    click element       ${ACCEPT_ACTION_BUTTON}

Click On Confirm Action
    wait until element is visible       ${CONFIRM_ACTION_BUTTON}      ${WAIT_TIME}
    click element       ${CONFIRM_ACTION_BUTTON}
    wait until element is not visible    ${CONFIRM_ACTION_BUTTON}      ${WAIT_TIME}

Click On Edit Action
    wait until element is visible       ${EDIT_ACTION_BUTTON}      ${WAIT_TIME}
    click element       ${EDIT_ACTION_BUTTON}
    wait until element is not visible    ${EDIT_ACTION_BUTTON}      ${WAIT_TIME}

