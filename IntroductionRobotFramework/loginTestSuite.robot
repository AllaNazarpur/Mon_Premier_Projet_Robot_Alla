*** Settings ***
Library    SeleniumLibrary    



*** Test Cases ***
loginTest
    [Documentation]    ceci est un test de login/logout
    Open Browser    ${URL}    ${Browser}
    Set Browser Implicit Wait    5
    Maximize Browser Window
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    @{CREDENTIALS}[1]
    Click Button    id=btnLogin        
    Click Element    id=welcome    
    Click Element    link=Logout 
    Log    Ceci un test execute par   %{username}    dans    %{os}
    Log    Fin de test
    Close Browser
    
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${Browser}    gc

@{CREDENTIALS}    Admin    admin123

 