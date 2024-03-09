*** Settings ***

Library    SeleniumLibrary

Resource    ../Ressources/common.robot
Resource    ../Ressources/variables.robot
Resource    ../Ressources/PO/PageAccueil.robot
Resource    ../Ressources/PO/pagesProduits1.robot
Resource    ../Ressources/PO/panier.robot
Resource    ../Ressources/PO/pagesProduits2.robot

Suite Setup  common.Debut du test

Suite Teardown    common.End Web Test

*** Test Cases ***

Page acceuil
    PageAccueil.Ouvrir chrome
    PageAccueil.Acceder a la page google
    PageAccueil.Acceder a la page d'acceuil Africa shop

Page produit
    pagesProduits1.Choisir la categorie du produit
    pagesProduits1.choisir son produits
    pagesProduits1.Consulter le produit le produit choisit
    
    # pagesProduits1.voir le panier
    # pagesProduits1.continuer les achats
 pannier 
    panier.voir le panier
    panier.continuer les achats
    

Page produit 2
    pagesProduits2.choisir une nouvelle categorie
    pagesProduits2.choisir son sac
    pagesProduits2.Ajout les produits au paniers