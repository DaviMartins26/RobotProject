*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

Acessar a pagina meusProtocolos
    #Esse comando faz o robot esperar 5s até o elemento ficar visivel
    Wait Until Element Is Visible    id = meus_protocolos
    Click Element                    id = meus_protocolos
    Wait Until Element Is Visible    id = filter        timeout=5s 

Verificar Pagina meusProtocolos
    Location Should Be    http://localhost/PUC-Achados/meus_protocolos/meus_protocolos.php

