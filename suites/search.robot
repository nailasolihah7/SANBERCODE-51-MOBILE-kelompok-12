*** Settings ***
Resource        ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource        ../pageObjects/searchPageObject/searchPage.robot


*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${VALID_PASSWORD}    abc123
${FLIGHT_NUMBER}     DA935
${INVALID_FLIGHT_NUMBER} HEHE123


*** Test Cases ***
Search Boking Number
    Open Flight Application
    Click Sign In Button On Home Page
    loginPage.Input Username On Login Page    ${VALID_USERNAME}
    loginPage.Input Password On Login Page    ${VALID_PASSWORD} 
    Click Sign In Button on Login Page
    Click Search Toolbar in Main menu
    Input Flight Number in Serach Page      ${FLIGHT_NUMBER} 
    Click Search Button in Search Page
    
Search Invalid Booking Number
    Open Flight Application
    Click Sign In Button On Home Page
    loginPage.Input Username On Login Page    ${VALID_USERNAME}
    loginPage.Input Password On Login Page    ${VALID_PASSWORD} 
    Click Sign In Button on Login Page
    Click Search Toolbar in Main menu
    Input Flight Number in Serach Page      ${FLIGHT_NUMBER} 
    Click Search Button in Search Page
