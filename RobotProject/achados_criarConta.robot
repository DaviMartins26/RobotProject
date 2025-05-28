*** Settings ***
Library	SeleniumLibrary

*** Variables ***

*** Keywords ***

Acessar Criar Conta
    Click Element    id=criar-button

Verificar Pagina criarConta
    Location Should Be  http://localhost/PUC-Achados/cadastro/Cadastro.html