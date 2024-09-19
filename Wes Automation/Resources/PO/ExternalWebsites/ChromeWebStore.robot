*** Settings ***
Library  SeleniumLibrary
Library    FakerLibrary
Library  OperatingSystem
Library  String
Resource    ../../Common.robot
Resource    ../../Configurations/config.robot

*** Variables ***
${ADD_TO_CHROME_BUTTON_IN_CHROME_WEB_STORE}     xpath=//*[@id="yDmH0d"]/c-wiz/div/div/main/div/section[1]/section/div[2]/div/button/span[6]
${EDIT_EXTENSION_SHORTCUT_BUTTON_IN_CHROME_WEB_STORE}       xpath=/html/body/extensions-manager//div[2]/cr-view-manager/extensions-keyboard-shortcuts//div/div[1]/div[2]/div/extensions-shortcut-input//div/cr-input/cr-icon-button//div/div
*** Keywords ***
Add Scanner Chrome Extension From Web Store
    wait until element is visible     ${ADD_TO_CHROME_BUTTON_IN_CHROME_WEB_STORE}       ${WAIT_TIME}
    click element    ${ADD_TO_CHROME_BUTTON_IN_CHROME_WEB_STORE}
    sleep    3s
    #switch window    window
    sleep    2s
    Press Tab Button
    Press Space Button

    #@{windows}=    Get Window Handles
    #Switch Window    @{windows}[1]
Add Scanner Chrome Extension ShortCut
    Press Tab Button
    Press Tab Button
    Press Tab Button
    Press Tab Button
    Press Tab Button
    Press Tab Button
    Press Space Button
    sleep    1s
    Open Or Close Scanner Extention

Add Scanner Chrome Extension ShortCut 3333
    reload page
    sleep    2s
    press keys      NONE        CTRL+SHIFT+K




