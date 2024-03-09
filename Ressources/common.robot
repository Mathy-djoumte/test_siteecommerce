*** Settings ***
Library    SeleniumLibrary

Resource  variables.robot


*** Keywords ***
Debut du test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window
End Web Test
    Close Browser