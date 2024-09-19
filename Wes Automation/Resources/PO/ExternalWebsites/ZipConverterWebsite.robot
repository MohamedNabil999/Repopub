*** Settings ***
Library  SeleniumLibrary
Library    FakerLibrary
Library  OperatingSystem
Library  String
Resource    ../../Common.robot
Resource    ../../Configurations/config.robot

*** Variables ***
${UPLOAD_FILE_BUTTON_IN_ZIP_CONVERTER_WEBSITE}      id=file-input
${DOWNLOAD_FILE_BUTTON_IN_ZIP_CONVERTER_WEBSITE}         id=download-button
*** Keywords ***


Upload File In Zip Converter Website
    [Arguments]    ${FILE_PATH_VALUE}
    ${FILE_PATH_VALUE}     normalize path    ${FILE_PATH_VALUE}
    wait until element is visible       ${UPLOAD_FILE_BUTTON_IN_ZIP_CONVERTER_WEBSITE}         timeout=${WAIT_TIME}
    choose file    ${UPLOAD_FILE_BUTTON_IN_ZIP_CONVERTER_WEBSITE}        ${FILE_PATH_VALUE}

Download File From Zip Converter Website
    wait until element is visible      ${DOWNLOAD_FILE_BUTTON_IN_ZIP_CONVERTER_WEBSITE}         timeout=${WAIT_TIME}
    sleep    3s
    click element    ${DOWNLOAD_FILE_BUTTON_IN_ZIP_CONVERTER_WEBSITE}
    sleep    5s

