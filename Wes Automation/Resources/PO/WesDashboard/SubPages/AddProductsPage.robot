*** Settings ***
Library  SeleniumLibrary
Library    FakerLibrary
Library  OperatingSystem
Library  String
Resource    ../../../Common.robot
Resource    ../../../Configurations/config.robot

*** Variables ***
${NEW_PRODUCT_BUTTON_IN_PRODUCTS_PAGE}     xpath=//button[contains(.,'New Product')]
${GTIN_FIELD_IN_PRODUCTS_PAGE}     id=id
${NAME_FIELD_IN_PRODUCTS_PAGE}      id=name
${TENANTS_LIST_FIELD_IN_PRODUCTS_PAGE}      id=tenants
${PRODUCT_TYPE_LIST_FIELD_IN_PRODUCTS_PAGE}      id=categoryId
${GTIN_SEARCH_FIELD_IN_PRODUCTS_PAGE}       xpath=//*[@id="mui-12"]
${ACTIONS_MENU_BUTTON_IN_PRODUCTS_PAGE}     xpath=//button[contains(@aria-label,'Row Actions')]

*** Keywords ***
Open Create New Product Page
    wait until element is visible    ${NEW_PRODUCT_BUTTON_IN_PRODUCTS_PAGE}        ${WAIT_TIME}
    click element    ${NEW_PRODUCT_BUTTON_IN_PRODUCTS_PAGE}

Enter GTIN Value In Products Page
    ${GTIN_VALUE_IN_PRODUCTS_PAGE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_VALUE_IN_PRODUCTS_PAGE}
    wait until element is visible     ${GTIN_FIELD_IN_PRODUCTS_PAGE}        ${WAIT_TIME}
    input text     ${GTIN_FIELD_IN_PRODUCTS_PAGE}       ${GTIN_VALUE_IN_PRODUCTS_PAGE}

Enter Name Value In Products Page
    ${NAME_VALUE_IN_PRODUCTS_PAGE}   FakerLibrary.Name
    Set Global Variable     ${NAME_VALUE_IN_PRODUCTS_PAGE}
    wait until element is visible     ${NAME_FIELD_IN_PRODUCTS_PAGE}        ${WAIT_TIME}
    input text     ${NAME_FIELD_IN_PRODUCTS_PAGE}       ${NAME_VALUE_IN_PRODUCTS_PAGE}

Choose Tenants In Products Page
    [Arguments]    ${TENANT_VALUE}
    wait until element is visible    ${TENANTS_LIST_FIELD_IN_PRODUCTS_PAGE}        ${WAIT_TIME}
    click element    ${TENANTS_LIST_FIELD_IN_PRODUCTS_PAGE}
    sleep    1s
    press keys      None     ${TENANT_VALUE}
    Press Down Arrow Button
    Press Down Arrow Button
    sleep    1s
    Press Enter Button

Choose Product Type In Products Page
    [Arguments]    ${PRODUCT_TYPE_VALUE}
    wait until element is visible    ${PRODUCT_TYPE_LIST_FIELD_IN_PRODUCTS_PAGE}        ${WAIT_TIME}
    click element    ${PRODUCT_TYPE_LIST_FIELD_IN_PRODUCTS_PAGE}
    sleep    1s
    press keys      None     ${PRODUCT_TYPE_VALUE}
    Press Down Arrow Button
    sleep    1s
    Press Enter Button

Search By GTIN Value In Products Page
    [Arguments]     ${GTIN_VALUE}
    wait until element is visible    ${GTIN_SEARCH_FIELD_IN_PRODUCTS_PAGE}        ${WAIT_TIME}
    input text    ${GTIN_SEARCH_FIELD_IN_PRODUCTS_PAGE}     ${GTIN_VALUE}

Click On Actions Menu Button In Products Page
    wait until element is visible    ${ACTIONS_MENU_BUTTON_IN_PRODUCTS_PAGE}        ${WAIT_TIME}
    click element    ${ACTIONS_MENU_BUTTON_IN_PRODUCTS_PAGE}


