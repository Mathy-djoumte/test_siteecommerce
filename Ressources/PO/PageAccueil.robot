*** Settings ***
Library    SeleniumLibrary

Resource    ../variables.robot

*** Keywords ***

Ouvrir chrome
    Go To  ${GOOGLE_URL}
    Wait Until Page Contains   Google
Acceder a la page google
   
    Clear Element Text  name=q
    Input Text  name=q  Africa shop
    Mouse Down  xpath=/html/body/div[1]/div[2]/div/img
    Mouse Up  xpath=/html/body/div[1]/div[2]/div/img
    Click Element  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]
    Wait Until Page Contains  Google

Acceder a la page d'acceuil Africa shop
    Go To  ${URL_SITE}


     