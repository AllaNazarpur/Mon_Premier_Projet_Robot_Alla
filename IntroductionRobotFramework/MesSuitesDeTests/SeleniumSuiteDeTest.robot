*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
    
LogIn Test
    [Documentation]    Tester le Login Logout
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    5
    Input Text        id=username    @{CREDENTIALS}[0]
    Input Password    id=password    @{CREDENTIALS}[1]
    Click Button          id=Login
    Close Browser

Voir la page de confidentialite
    [Documentation]    Tester affichage de la page "confidentialite"
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    5
    Click Element    id=privacy-link    
    Close Browser

    
*** Variables ***
${URL}    https://login.salesforce.com/? locale=ca
@{CREDENTIALS}     allanazarpour-calp@force.com    Alla123!  

