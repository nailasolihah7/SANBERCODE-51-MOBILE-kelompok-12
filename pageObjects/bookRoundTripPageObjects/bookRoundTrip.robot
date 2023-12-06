*** Settings ***
Resource        ../base/base.robot
Variables       book-round-trip-locators.yaml


*** Keywords ***
Click Booking Toolbar in Main menu
    Wait Until Page Contains Element    ${book-menu}
    Click Element    ${book-menu}

Click Round Trip menu
    Wait Until Page Contains Element    ${round-trip}
    Click Element    ${round-trip}

Select Value From City in Spinner
    Wait Until Page Contains Element    ${spinner1}
    Click Element    ${spinner1}
    Wait Until Page Contains Element    ${from-city}
    Click Element    ${from-city}

Select Value Seat Class
    Wait Until Page Contains Element    ${spinner3}
    Click Element    ${spinner3}
    Wait Until Page Contains Element    ${seat-class}
    Click Element    ${seat-class}

Select Value Start Date
    Wait Until Page Contains Element    ${start-date}
    Click Element    ${start-date}
    Wait Until Page Contains Element    ${set-start-date}
    Click Element    ${set-start-date}
    Click Element    ${OK-set-button}

Select Value End Date
    Wait Until Page Contains Element    ${end-date}
    Click Element    ${end-date}
    Wait Until Page Contains Element    ${set-end-date}
    Click Element    ${set-end-date}
    Click Element    ${OK-set-button}

Select Value Additional
    Wait Until Page Contains Element    ${check-additional}
    Click Element    ${check-additional}

Click Book Button on Book Page
    Wait Until Page Contains Element    ${book-button}
    Click Element    ${book-button}

Click Price and Date Available
    Wait Until Page Contains Element    ${set-price}
    Click Element    ${set-price}

Click Button Confrim on Order Page
    Wait Until Page Contains Element    ${confrim-button}
    Click Element    ${confrim-button}
