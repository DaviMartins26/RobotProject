*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Variables ***
${PAUSA}           2s
#EMPTY passa um campo vazio
${VAZIO-16}    "        "
${Alerta-C16}        Por favor, insira um Nome válido

*** Keywords ***
#DAVI: No meu caso de teste ele não deveria preencher nada, neste caso, é necessário eu passar algum valor nulo eu só deixo registrado a Verificação de Notificação?
C16 Passar valor Nulo
    Input Text  id=nome_item  ${VAZIO-16}  
    Sleep    3s 

C16 Verificar Notificacao
    Alert Should Be Present        ${Alerta-C16}    timeout=10s
