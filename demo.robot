*** Settings ***
Library    SeleniumLibrary
Library    Dialogs

*** Variables ***
${BROWSER}    Chrome
${URL}        https://www.google.com
${SEARCH_BOX}    name=q
${SEARCH_BUTTON}    name=btnK

*** Test Cases ***
Google Search Test
    [Documentation]    Open Google and search for Robot Framework
    Open Browser    ${URL}    ${BROWSER}
    Pause Execution
    Input Text    ${SEARCH_BOX}    Robot Framework
    Press Keys    ${SEARCH_BOX}    ENTER
    Close Browser
