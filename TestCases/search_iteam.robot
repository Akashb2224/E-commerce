*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/keywords.robot
Resource   ../Locators/locators.robot

*** Test Cases ***
TC001_Search for a Product
    [Documentation]  Search for an item and verify results
    Open Browser To DemoWebShop
    Input Text  ${SEARCH_BAR}  ${SEARCH_TERM}
    Click Button  ${SEARCH_BUTTON}
    Wait Until Page Contains  ${SEARCH_TERM}
    Close Browser Session
