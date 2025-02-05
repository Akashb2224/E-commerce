*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}       Chrome
${URL}           https://demowebshop.tricentis.com/
${REGISTER_URL}  ${URL}/register
${LOGIN_URL}     ${URL}/login
${SEARCH_TERM}   Laptop
