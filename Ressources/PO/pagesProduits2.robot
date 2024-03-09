*** Settings ***
Library    SeleniumLibrary

Resource    ../variables.robot

*** Keywords ***

choisir une nouvelle categorie
    Click Link    xpath=//*[@id="shopify-section-template--15054349861073__grid"]/section/div/div[1]/div[15]/div[2]/h3/a
   

choisir son sac
    Click Link   xpath = //*[@id="prod-7281086496977"]/div[2]/a
    Wait Until Page Contains    Tom et Eva Sac Cabas Femme Vintage avec bandeau de soie Noir 29*10*24 cm
    Click Element   xpath=//*[@id="thumb-slider-wrapper"]/div/div[2]/div/img
    Click Element   xpath=//*[@id="thumb-slider-wrapper"]/div/div[3]/div/img
Ajout les produits au paniers
    Click Button  xpath=//*[@id="addToCart"]  
    Wait Until Page Contains  Mon panier
    Wait Until Element Is Visible  xpath=//*[@id="mini-cart"]/div[3]/form/div[3]/div[2]/a  timeout=60s