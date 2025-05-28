*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAUSA}           2s
#EMPTY passa um campo vazio
${VALOR-C25}        Teste25
${Alerta-C25}        Protocolo registrado com sucesso!


*** Keywords ***
C25 Preencher Filtro
    Input Text  id=filter-input  ${VALOR-C25}  
    Sleep    3s 

C25 Preencher Nome
    Input Text    id=nome_item   ${VALOR-C25}  
    Sleep    3s

C25 Preencher Descricao
    Input Text    id=descricao   ${VALOR-C25}  
    Sleep    3s

C25 Verificar Notificacao
    Alert Should Be Present        ${Alerta-C25}  timeout=10s

C25 Verificar Filtragem
    Wait Until Page Contains Element    xpath=//tr[./td[contains(text(), 'Teste25')]]    timeout=10s    