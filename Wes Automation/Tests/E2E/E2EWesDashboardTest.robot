*** Settings ***
Library  SeleniumLibrary
Resource    ../../Resources/Common.robot
Resource    ../../Resources/PO/WesDashboard/MainMenuPage.robot
Resource    ../../Resources/PO/ExternalWebsites/ZipConverterWebsite.robot
Resource    ../../Resources/PO/ExternalWebsites/ChromeWebStore.robot
Resource    ../../Resources/PO/WesDashboard/SubPages/AddProductsPage.robot
Resource    ../../Resources/PO/WesDashboard/SubPages/AddShipmentPage.robot
Resource    ../../Resources/PO/WesDashboard/SubPages/Actions.robot
Resource    ../../Resources/PO/WesDashboard/LoginPage.robot
Resource    ../../Resources/PO/WesDashboard/ShipmentFiles.robot
#Test Setup    Login Wes Dashboard
Test Teardown    Close web browser
*** Test Cases ***
Generate Data
    Create Data Case 1 In Json File
    Create Data Case 2 In Json File
    Create Data Case 3 In Json File
    Create Data Case 4 In Json File
    Create Data Case 5 In Json File
    Create Data Case 6 In Json File
    Create Data Case 7 In Json File
    Create Data Case 8 In Json File
    Create Data Case 9 In Json File
    Create Data Case 10 In Json File

E2E Cycle In Wes Dashboard
    Open Chrome Browser     ${ZIP_CONVERTER_WEBSITE_URL}
    Upload File In Zip Converter Website        ${DATA_FILE_CASE_1_PATH_VALUE}
    Download File From Zip Converter Website
    Move File From Location To Another      ${DOWNLOADS_LOCATION_ON_PC}         ${TEST_DATA_FOLDER_PATH_VALUE}
    Navigate To     ${WES_URL}
    Login To Wes        ${ADMIN_USERNAME}       ${ADMIN_PASSWORD}
    Click On Submit Button
    Choose Tenant In Choose Site Popup      ${TENANT_ID}
    Check Value Displayed            Welcome Back
    Open Logistic Operations Submenu
    Open Shipment Files Page
    Click On Create New Shipment File Button In Shipment Files Page
    Choose Supplier In Shipment Files Page      ${SUPPLIER_NAME_VALUE}
    Upload File In Shipment Files Page      ${ZIP_FILE_PATH_VALUE}
    Click On Submit Button
    Check Value Displayed            File Added Successfully
    Check Value Is Not Displayed        File Added Successfully
    reload page
    Open Or Close Main Menu
    Expand All Records In Shipment Files Page
    Check First Shipment File Statuses In Shipment Files Page       ${SHIPMENT_FILE_STATUSES}[0]        ${SHIPMENT_FILE_UPLOADING_STATUSES}[1]
    Check First Shipment File GTIN In Shipment Files Page           ${GTIN_ITEM_1_CASE_1_VALUE}
    Check First Shipment File Product Name In Shipment Files Page       ${UNKNOWN_VALUE}
    Open Or Close Main Menu
    Open Products Submenu
    Open Search By Product Page
    Search By GTIN Value In Products Page             ${GTIN_ITEM_1_CASE_1_VALUE}
    Click On Actions Menu Button In Products Page
    Click On Edit Action
    Clear Field Value       ${NAME_FIELD_IN_PRODUCTS_PAGE}
    Enter Name Value In Products Page
    Click On Confirm Action
    Check Value Displayed            Updated Successfully
    Check Value Is Not Displayed        Updated Successfully
    Open Logistic Operations Submenu
    Open Shipment Files Page
    Open Or Close Main Menu
    Expand All Records In Shipment Files Page
    Check First Shipment File Product Name In Shipment Files Page       ${NAME_VALUE_IN_PRODUCTS_PAGE}
    Open Actions Menu
    Click On Accept Action
    Check Value Displayed       ${RECEIVE_CONFIRMATION_MESSAGE_VALUE}
    Click On Confirm Action
    Check Quantity Accepted In Shipment Files Page       1
    Check Quantity Failed In Shipment Files Page          0
    Press Escape Button
    Check First Shipment File Statuses In Shipment Files Page       ${SHIPMENT_FILE_STATUSES}[1]        ${SHIPMENT_FILE_UPLOADING_STATUSES}[1]



