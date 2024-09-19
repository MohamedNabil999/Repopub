*** Settings ***
Resource    ../../Common.robot
#Library    DataDriver   ../TestData/LoginData.xlsx      sheet_name=Sheet1
#Test Template    Login to isms
*** Variables ***
${USERNAME_FIELD}     id=username
${PASSWORD_FIELD}     id=password

*** Keywords ***
Login To Wes
    [Arguments]  ${USERNAME_VALUE}      ${PASSWORD_VALUE}
    wait until element is not visible    ${USERNAME_FIELD}         ${WAIT_TIME}
    Input Text  ${USERNAME_FIELD}   ${USERNAME_VALUE}
    Input Text  ${PASSWORD_FIELD}   ${PASSWORD_VALUE}
