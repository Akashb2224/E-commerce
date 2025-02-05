*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/keywords.robot
Resource   ../Locators/locators.robot

# Run the tests using
# robot TestCases/registration_login.robot
# robot TestCases/search_item.robot

*** Test Cases ***
TC001_User Registration
    [Documentation]  Register a new user successfully
    [Tags]    Register
    Open Browser To DemoWebShop
    Click Element  ${REGISTER_LINK}
    Click Element  ${GENDER_MALE}
    Input Text  ${FIRSTNAME}  Akash
    Input Text  ${LASTNAME}   Basagare
    Input Text  ${EMAIL}  akashb2224@gmail.com
    Input Text  ${PASSWORD}  Test@1234
    Input Text  ${CONFIRM_PASSWORD}  Test@1234
    Click Button  ${REGISTER_BUTTON}
    Wait Until Page Contains  Your registration completed
    Close Browser Session

TC002_User Login
    [Documentation]  Login with the registered user
    [Tags]    Login
    Open Browser To DemoWebShop
    Click Element  ${LOGIN_LINK}
    Input Text  ${LOGIN_EMAIL}  ${email}
    Input Text  ${LOGIN_PASSWORD}  Test@1234
    Click Button  ${LOGIN_BUTTON}
    Wait Until Page Contains  My account
    Close Browser Session
