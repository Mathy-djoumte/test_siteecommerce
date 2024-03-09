*** Settings ***
Library    SeleniumLibrary

Resource    ../variables.robot

*** Keywords ***




Ajouter le produit au paniers
    Click Button  xpath=//*[@id="addToCart"]  
    Wait Until Page Contains  Mon panier
    
    
   
voir le panier
    Wait Until Element Is Visible  xpath=//*[@id="mini-cart"]/div[3]/form/div[3]/div[2]/a  timeout=60s
    Click Link  xpath= //*[@id="mini-cart"]/div[3]/form/div[3]/div[2]/a
    Wait Until Page Contains  Mon panier
continuer les achats 
    Click Link    xpath=//*[@id="shopify-section-template--15054349566161__main"]/section/div/div[2]/div[1]/a
    Wait Until Page Contains  Mon panier