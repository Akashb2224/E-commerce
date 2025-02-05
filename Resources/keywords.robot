*** Settings ***
Library  SeleniumLibrary
Resource  ../Configuration/config.robot
Resource   ../Locators/locators.robot

*** Keywords ***
Open Browser To DemoWebShop
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Close Browser Session
    Close Browser
