*** Settings ***
Library     SeleniumLibrary
Library     JSONLibrary
Library     FakerLibrary
Library     OperatingSystem
Library     String
Documentation    Update
...     Library Documenation : https://robotframework-thailand.github.io/robotframework-jsonlibrary/JSONLibrary.html
Resource    ../Resources/Configurations/config.robot
Resource    ../Resources/PO/WesDashboard/LoginPage.robot
*** Variables ***
${SEARCH_FIELD_IN_CHOOSE_TENANT_PAGE}     xpath=(//input[@type='text'])[2]
${ORIGIN_DEMO_TENANT_IN_CHOOSE_TENANT_PAGE}     xpath=//span[contains(.,'Origin Demo')]
${SUBMIT_BUTTON}      xpath=//button[@type='submit']
*** Keywords ***
Open Chrome Browser
    [Arguments]    ${URL}
    #${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    #Call Method    ${options}    add_extension    ${SCANNER_PATH_VALUE}
    ${driver_path}=    chromedriversync.Get Driver Path With Browser       ${CHROME_BROWSER}
    Open Browser   ${URL}   ${CHROME_BROWSER}    executable_path=${driver_path}       #options=${options}
    Go To   ${URL}
    Maximize Browser Window

Navigate To
    [Arguments]    ${URL}
    Go To   ${URL}

Click On Submit Button
    wait until element is enabled    ${SUBMIT_BUTTON}        timeout=${WAIT_TIME}
    click element    ${SUBMIT_BUTTON}

Close web browser
    Close All Browsers

Upload File
    [Arguments]         ${FILE_PATH_VALUE}
    Wait Until Page Contains        Import Configure
    Set Focus To Element     ${UPLOAD_BUTTON}
    ${FILE_PATH_VALUE}      Normalize Path      ${FILE_PATH_VALUE}
    Choose File      ${UPLOAD_BUTTON}   ${FILE_PATH_VALUE}

Press Enter Button
    press keys      NONE     ENTER

Press Tab Button
    press keys      NONE     TAB

Press Escape Button
    press keys      NONE     ESCAPE

Press Down Arrow Button
    press keys      NONE     ARROW_DOWN

Press Space Button
    press keys      NONE     SPACE

Open Or Close Scanner Extention
    #Execute JavaScript    document.addEventListener('keydown', function(e) { if (e.key === 'K' && e.ctrlKey && e.shiftKey) { console.log('Ctrl+Shift+K simulated'); }});
    press keys      NONE        CTRL+SHIFT+K
    #Execute JavaScript    window.focus(); document.dispatchEvent(new KeyboardEvent('keydown', { key: 'CTRL+SHIFT+K' }));
    #Execute JavaScript    document.dispatchEvent(new KeyboardEvent('keyup', { key: 'CTRL+SHIFT+K' }));

Check Value Displayed
    [Arguments]  ${PAGE_CONTAINS_VALUE}
    Wait Until Page Contains    ${PAGE_CONTAINS_VALUE}        timeout=${WAIT_TIME}

Check Value Is Not Displayed
    [Arguments]  ${PAGE_CONTAINS_VALUE}
    Wait Until Page Does Not Contain     ${PAGE_CONTAINS_VALUE}        timeout=${WAIT_TIME}

Check Element Is Displayed
    [Arguments]  ${ELEMENT_VALUE}
    Wait Until Element Is Visible    ${ELEMENT_VALUE}        timeout=${WAIT_TIME}

Check Element Is Not Displayed
    [Arguments]  ${ELEMENT_VALUE}
    Wait Until Element Is Not Visible     ${ELEMENT_VALUE}        timeout=${WAIT_TIME}

Choose Tenant In Choose Site Popup
    [Arguments]    ${TENANT_VALUE}
    Wait Until Element Is Visible    ${SEARCH_FIELD_IN_CHOOSE_TENANT_PAGE}        timeout=${WAIT_TIME}
    Input Text         ${SEARCH_FIELD_IN_CHOOSE_TENANT_PAGE}              ${TENANT_VALUE}
    Wait Until Element Is Visible    ${SEARCH_FIELD_IN_CHOOSE_TENANT_PAGE}        timeout=${WAIT_TIME}
    Click Element       ${ORIGIN_DEMO_TENANT_IN_CHOOSE_TENANT_PAGE}

Read Data From Excel File
    ${DATA_FILE_AFTER_UPDATE}        Load Json From File      ${DATA_FILE_PATH_VALUE}
    ${INVENTORY_BARCODE_VALUE_TEST}       Get Value From Json      ${DATA_FILE_AFTER_UPDATE}          $.data[:1].parent1
    ${ITEM_BARCODE_VALUE_TEST}       Get Value From Json      ${DATA_FILE_AFTER_UPDATE}          $.data[:1].barcode
    log to console    The inventory barcode is : ${INVENTORY_BARCODE_VALUE_TEST[0]}
    log to console    The inventory barcode is : ${ITEM_BARCODE_VALUE_TEST[0]}

Move File From Location To Another
    [Arguments]    ${FROM_LOCATION}      ${TO_LOCATION}
    move file        ${FROM_LOCATION}      ${TO_LOCATION}

Clear Field Value
    [Arguments]    ${FIELD_PATH}
    clear element text    ${FIELD_PATH}

