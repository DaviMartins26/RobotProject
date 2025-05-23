*** Settings ***
Library    SeleniumLibrary
Suite Setup    Abrir Navegador e Acessar PUC Achados
Suite Teardown    Fechar Navegador

*** Variables ***
${URL}           http://localhost/PUC-Achadoss/index.php     
${BROWSER}       Chrome
${PAUSA}         2s

*** Test Cases ***
CT01 - Login com usuário não cadastrado
    Sleep    ${PAUSA}
    Sleep    ${PAUSA}
    Preencher Campo Email    usuarioinexistente@teste.com
    Sleep    ${PAUSA}
    Preencher Campo Senha    123
    Sleep    ${PAUSA}
    Clicar Em Entrar
    Sleep    ${PAUSA}
    Verificar Mensagem Credenciais Invalidas
    Sleep    ${PAUSA}

*** Keywords ***
Abrir Navegador e Acessar PUC Achados
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//a[contains(., 'Login')]
    Sleep    ${PAUSA}

Fechar Navegador
    Sleep    ${PAUSA}
    Close Browser

Clicar Em Login
    Click Element    xpath=//a[contains(., 'Login')]
    Wait Until Page Contains Element    id=email_id 

Preencher Campo Email
    [Arguments]    ${email}
    Input Text    id=email_id    ${email}

Preencher Campo Senha
    [Arguments]    ${senha}
    Input Text    id=senha_id    ${senha}

Clicar Em Entrar
    Click Element    id=enviar

Verificar Mensagem Credenciais Invalidas
    Alert Should Be Present    Credenciais Inválidas

