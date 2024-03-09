*** Settings ***
Library    SeleniumLibrary

Resource    ../variables.robot

*** Keywords ***

Choisir la categorie du produit 
    Click Link  xpath= //*[@id="global__gallery-template--15054349795537__1625752962aa2a6ebb"]/div/div[1]/div/div[3]/div/span/a
    Wait Until Page Contains  Robes
choisir son produits 

    Click Link   xpath=//*[@id="prod-6840499110097"]/div[1]/div[2]/a
    Wait Until Page Contains  Longue robe motif animal

Consulter le produit le produit choisit
    Click Image  xpath=//*[@id="thumb-slider-wrapper"]/div/div[2]/div/img
    Wait Until Page Contains  Longue robe motif animal
    Click Element  xpath= //*[@id="AddToCartForm"]/div[2]/div[2]
    Wait Until Page Contains  Longue robe motif animal
    Click Element  xpath=//*[@id="AddToCartForm"]/div[5]/a[2]
# Ajouter le produit au paniers
#     Click Button  xpath=//*[@id="addToCart"]  
#     Wait Until Page Contains  Mon panier
    
    
   
# voir le panier
#     Wait Until Element Is Visible  xpath=//*[@id="mini-cart"]/div[3]/form/div[3]/div[2]/a  timeout=60s
#     Click Link  xpath= //*[@id="mini-cart"]/div[3]/form/div[3]/div[2]/a
#     Wait Until Page Contains  Mon panier
# continuer les achats 
#     Click Link    xpath=//*[@id="shopify-section-template--15054349566161__main"]/section/div/div[2]/div[1]/a
#     Wait Until Page Contains  Mon panier