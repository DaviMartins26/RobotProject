*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAUSA}           2s
#EMPTY passa um campo vazio
${VAZIO-20}    "        "
${Descricao-C20}         teste numero 20
${Alerta-C20}        Por favor, insira um Nome válido


*** Keywords ***
C20 Passar valor Nulo
    Input Text  id=nome_item  ${VAZIO-20}  
    Sleep    3s 

C20 Preencher Descricao
    Input Text    id=descricao   ${Descricao-C20}  
    Sleep    3s

C20 Verificar Notificacao
    Alert Should Be Present        ${Alerta-C20}    timeout=10s