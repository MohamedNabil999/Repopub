*** Settings ***
Library  chromedriversync.py
Library    one.py
*** Variables ***
${WES_URL}  https://https://staging.aws.originsysglobal.com
${CHROME_BROWSER}  chrome
${ADMIN_USERNAME}      originAdelAdmin
${ADMIN_PASSWORD}       admin
${TENANT_ID}        6294022271193
${WAIT_TIME}     60s
${ZIP_CONVERTER_WEBSITE_URL}      https://www.countingcharacters.com/zip-file-online
${SCANNER_EXTENSION_CHROME_STORE_URL}      https://chromewebstore.google.com/detail/virtual-scanner/gmnafijplmggmijmoefmlffkdmkdkiac
${KEYBOARD_EXTENSIONS_CHROME_STORE_URL}      chrome://extensions/shortcuts
########################################################################
#######################################################################
${SCANNER_PATH_VALUE}      ${CURDIR}/../../Uploads/scanner.crx
${ICON_PATH_VALUE}      ${CURDIR}/../../Uploads/download.jpg
${DATA_FILE_CASE_1_PATH_VALUE}      ${CURDIR}/../../TestData/DataCase1.json
${ZIP_DATA_FILE_CASE_1_PATH_VALUE}      ${CURDIR}/../../TestData/ZipDataCase1.zip
${DATA_FILE_CASE_2_PATH_VALUE}      ${CURDIR}/../../TestData/DataCase2.json
${DATA_FILE_CASE_3_PATH_VALUE}      ${CURDIR}/../../TestData/DataCase3.json
${DATA_FILE_CASE_4_PATH_VALUE}      ${CURDIR}/../../TestData/DataCase4.json
${DATA_FILE_CASE_5_PATH_VALUE}      ${CURDIR}/../../TestData/DataCase5.json
${DATA_FILE_CASE_6_PATH_VALUE}      ${CURDIR}/../../TestData/DataCase6.json
${DATA_FILE_CASE_7_PATH_VALUE}      ${CURDIR}/../../TestData/DataCase7.json
${DATA_FILE_CASE_8_PATH_VALUE}      ${CURDIR}/../../TestData/DataCase8.json
${DATA_FILE_CASE_9_PATH_VALUE}      ${CURDIR}/../../TestData/DataCase9.json
${DATA_FILE_CASE_10_PATH_VALUE}      ${CURDIR}/../../TestData/DataCase10.json
${TEST_DATA_FOLDER_PATH_VALUE}      ${CURDIR}/../../TestData
${ZIP_FILE_PATH_VALUE}      ${CURDIR}/../../TestData/files.zip
${DOWNLOADS_LOCATION_ON_PC}         C:/Users/sky/Downloads/files.zip
${ORIGIN_DEMO_TENANT_VALUE}     Origin Demo
${SUPPLIER_NAME_VALUE}      Nabil (0000000000123)
@{SHIPMENT_FILE_STATUSES}      Not Received     Received
@{SHIPMENT_FILE_UPLOADING_STATUSES}     Upload Failure      Uploaded
${UNKNOWN_VALUE}        UNKNOWN
${EXPIRY_DATE_VALUE}        2030-08-12
${MANUFACTORING_DATE_VALUE}       2020-08-09
${RECEIVE_CONFIRMATION_MESSAGE_VALUE}       Are you sure you want to receive this shipment ?
@{PRODUCT_TYPE_VALUES}      Pharma      NonPharma
*** Test Cases ***
Test Addition
    ${result}=    add_numbers    5        7
    Should Be Equal    ${result}    12

Test Greeting
    ${greeting}=    greet    John
    Should Be Equal    ${greeting}    Hello, John!
    log to console        ${greeting}

