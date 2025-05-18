*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${URL}        http://localhost/PUC-Achados/gerenciar_fun/gerenciar_fun.php
${NAO-AUTORIZADO}    ACESSO NÃO AUTORIZADO
            

*** Keywords ***
Acessar a pagina gerenciar_fun
	Go To	url=${URL}

Verificar Pagina Nao-Autorizado
    Wait Until Location Contains    /nao_autorizado/nao_autorizado.html    timeout=15s
    Location Should Be        http://localhost/PUC-Achados/nao_autorizado/nao_autorizado.html
