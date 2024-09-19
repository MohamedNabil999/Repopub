*** Settings ***
Resource    ../../Common.robot
*** Variables ***
${MAIN_MENU_BUTTON}        xpath=//button[@aria-label='Open drawer']
${PAGE_TITLE}       xpath=//*[@id="root"]/div[1]/main/div[2]/div/div[2]/div[1]/h1
${PRODUCTS_SUBMENU_IN_MAIN_MENU}        xpath=//span[contains(.,'Products')]
${LOGISTIC_OPERATIONS_SUBMENU_IN_MAIN_MENU}        xpath=//span[contains(.,'Logistic Operations')]
${SEARCH_BY_PRODUCT_PAGE_IN_MAIN_MENU}        xpath=//span[contains(.,'Search by product')]
${SKUS_PAGE_IN_MAIN_MENU}      xpath=//span[contains(.,'SKUs')]
${MAPPING_PAGE_IN_MAIN_MENU}       xpath=//span[contains(.,'Mapping')]
${SHIPMENT_FILES_PAGE_IN_MAIN_MENU}        xpath=//span[contains(.,'Shipment Files')]
*** Keywords ***
Open Or Close Main Menu
    Wait Until Element Is Visible    ${MAIN_MENU_BUTTON}        timeout=${WAIT_TIME}
    Click Element       ${MAIN_MENU_BUTTON}

Open Products Submenu
    Wait Until Element Is Visible    ${PRODUCTS_SUBMENU_IN_MAIN_MENU}        timeout=${WAIT_TIME}
    Click Element       ${PRODUCTS_SUBMENU_IN_MAIN_MENU}

Open Logistic Operations Submenu
    Wait Until Element Is Visible    ${LOGISTIC_OPERATIONS_SUBMENU_IN_MAIN_MENU}        timeout=${WAIT_TIME}
    Click Element       ${LOGISTIC_OPERATIONS_SUBMENU_IN_MAIN_MENU}

Open Search By Product Page
    Wait Until Element Is Visible    ${SEARCH_BY_PRODUCT_PAGE_IN_MAIN_MENU}        timeout=${WAIT_TIME}
    Click Element       ${SEARCH_BY_PRODUCT_PAGE_IN_MAIN_MENU}
    wait until element contains      ${PAGE_TITLE}          Products         timeout=${WAIT_TIME}

Open SKUs Page
    Wait Until Element Is Visible    ${SKUS_PAGE_IN_MAIN_MENU}        timeout=${WAIT_TIME}
    Click Element       ${SKUS_PAGE_IN_MAIN_MENU}
    wait until element contains      ${PAGE_TITLE}          SKUs         timeout=${WAIT_TIME}

Open Mapping Page
    Wait Until Element Is Visible    ${MAPPING_PAGE_IN_MAIN_MENU}        timeout=${WAIT_TIME}
    Click Element       ${MAPPING_PAGE_IN_MAIN_MENU}
    wait until element contains      ${PAGE_TITLE}          Mapping         timeout=${WAIT_TIME}

Open Shipment Files Page
    Wait Until Element Is Visible    ${SHIPMENT_FILES_PAGE_IN_MAIN_MENU}        timeout=${WAIT_TIME}
    Click Element       ${SHIPMENT_FILES_PAGE_IN_MAIN_MENU}
    wait until element contains      ${PAGE_TITLE}          Shipment Files         timeout=${WAIT_TIME}
