*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Variables ***

${PREENCHER}  Teste17
${DATA_HOJE}=    Get Current Date    result_format=%Y-%m-%d
${DATA_FUTURA}=  Add Time To Date    ${DATA_HOJE}    +1 days
*** Keywords ***

Acessar a pagina PerdiAlgo
    #Esse comando faz o robot esperar 5s até o elemento ficar visivel
    Wait Until Element Is Visible    id=link_perdi_algo
    Click Element                    id=link_perdi_algo
    Wait Until Element Is Visible    id=nome_item          timeout=15s 

Escrever em Nome do Campo
    Input Text  id=nome_item  ${PREENCHER}

Reescrever Data
    Wait Until Element Is Visible    id=data_perda
    Input Text                       id=data_perda    ${DATA_FUTURA}

Verificar Pagina Perda
    Location Should Be    http://localhost/PUC-Achados/protocolo_perda/perdi_algo.php