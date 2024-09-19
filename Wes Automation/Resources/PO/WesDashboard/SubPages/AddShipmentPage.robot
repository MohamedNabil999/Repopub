*** Settings ***
*** Settings ***
Library  SeleniumLibrary
Library    FakerLibrary
Library  OperatingSystem
Library  String
Resource    ../../../Common.robot
Resource    ../../../Configurations/config.robot
*** Variables ***
${NEW_FILE_BUTTON_IN_SHIPMENT_FILES_PAGE}        xpath=//button[contains(.,'New File')]
${SUPPLIERS_LIST_IN_SHIPMENT_FILES_PAGE}       id=supplier
${UPLOAD_FILE_BUTTON_IN_SHIPMENT_FILES_PAGE}        id=file
${EXPAND_ALL_RECORDS_BUTTON_IN_SHIPMENT_FILES_PAGE}         xpath=//button[@aria-label='Expand all']
${GTIN_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}         xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[4]/div[2]/table/tbody/tr[2]/td/div/div/div/div/div/div[1]/table/tbody/tr/td[1]
${PRODUCT_NAME_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}        xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[4]/div[2]/table/tbody/tr[2]/td/div/div/div/div/div/div[1]/table/tbody/tr/td[2]
${STATUS_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}    xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[4]/div[2]/table/tbody/tr[1]/td[2]/span/span
${UPLOADING_STATUS_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}    xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[4]/div[2]/table/tbody/tr[1]/td[3]/span/span
${RECEIVED_QUANTITY_IN_ACCEPT_CONFIRMATION_MESSAGE_IN_SHIPMENT_FILES_PAGE}     xpath=/html/body/div[4]/div[3]/div/div[2]/div[1]/div/p[1]
${FAILED_QUANTITY_IN_ACCEPT_CONFIRMATION_MESSAGE_IN_SHIPMENT_FILES_PAGE}      xpath=/html/body/div[4]/div[3]/div/div[2]/div[1]/div/p[2]
*** Keywords ***
Click On Create New Shipment File Button In Shipment Files Page
    Wait Until Element Is Visible    ${NEW_FILE_BUTTON_IN_SHIPMENT_FILES_PAGE}        timeout=${WAIT_TIME}
    Click Element    ${NEW_FILE_BUTTON_IN_SHIPMENT_FILES_PAGE}

Choose Supplier In Shipment Files Page
    [Arguments]    ${SUPPLIER_VALUE}
    Wait Until Element Is Visible    ${SUPPLIERS_LIST_IN_SHIPMENT_FILES_PAGE}        timeout=${WAIT_TIME}
    click element       ${SUPPLIERS_LIST_IN_SHIPMENT_FILES_PAGE}
    sleep    2s
    press keys    None      ${SUPPLIER_VALUE}
    sleep    1s
    press keys    None      ARROW_DOWN
    sleep    1s
    press keys    None      ENTER
    sleep    1s

Upload File In Shipment Files Page
    [Arguments]    ${FILE_PATH}
    ${FILE_PATH}    normalize path    ${FILE_PATH}
    choose file     ${UPLOAD_FILE_BUTTON_IN_SHIPMENT_FILES_PAGE}      ${FILE_PATH}
    sleep    3s

Expand All Records In Shipment Files Page
    Wait Until Element Is Visible    ${EXPAND_ALL_RECORDS_BUTTON_IN_SHIPMENT_FILES_PAGE}        timeout=${WAIT_TIME}
    Click Element    ${EXPAND_ALL_RECORDS_BUTTON_IN_SHIPMENT_FILES_PAGE}
    sleep    3s

Check First Shipment File Statuses In Shipment Files Page
    [Arguments]    ${FILE_STATUS_VALUE}       ${FILE_UPLOADING_STATUS_VALUE}
    Wait Until Element Is Visible    ${STATUS_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}        timeout=${WAIT_TIME}
    element text should be      ${STATUS_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}       ${FILE_STATUS_VALUE}
    Wait Until Element Is Visible    ${UPLOADING_STATUS_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}        timeout=${WAIT_TIME}
    element text should be      ${UPLOADING_STATUS_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}       ${FILE_UPLOADING_STATUS_VALUE}

Check First Shipment File GTIN In Shipment Files Page
    [Arguments]    ${FILE_GTIN_VALUE}
    Wait Until Element Is Visible    ${GTIN_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}        timeout=${WAIT_TIME}
    element text should be      ${GTIN_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}       ${FILE_GTIN_VALUE}

Check First Shipment File Product Name In Shipment Files Page
    [Arguments]    ${FILE_PRODUCT_NAME_VALUE}
    Wait Until Element Is Visible    ${PRODUCT_NAME_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}        timeout=${WAIT_TIME}
    element text should be      ${PRODUCT_NAME_OF_FIRST_SHIPMENT_FILE_RECORD_IN_SHIPMENT_FILES_PAGE}       ${FILE_PRODUCT_NAME_VALUE}

Check Quantity Accepted In Shipment Files Page
    [Arguments]    ${RECEIVED_QUANTITY_VALUE}
    Wait Until Element Is Visible    ${RECEIVED_QUANTITY_IN_ACCEPT_CONFIRMATION_MESSAGE_IN_SHIPMENT_FILES_PAGE}        timeout=${WAIT_TIME}
    wait until element contains      ${RECEIVED_QUANTITY_IN_ACCEPT_CONFIRMATION_MESSAGE_IN_SHIPMENT_FILES_PAGE}       ${RECEIVED_QUANTITY_VALUE}

Check Quantity Failed In Shipment Files Page
    [Arguments]    ${FAILED_QUANTITY_VALUE}
    Wait Until Element Is Visible    ${FAILED_QUANTITY_IN_ACCEPT_CONFIRMATION_MESSAGE_IN_SHIPMENT_FILES_PAGE}        timeout=${WAIT_TIME}
    wait until element contains      ${FAILED_QUANTITY_IN_ACCEPT_CONFIRMATION_MESSAGE_IN_SHIPMENT_FILES_PAGE}       ${FAILED_QUANTITY_VALUE}






