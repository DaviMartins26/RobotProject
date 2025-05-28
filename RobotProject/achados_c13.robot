*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Variables ***
${PAUSA}           2s
#EMPTY passa um campo vazio
${VAZIO-13}    "        "
${Alerta-C13}        Por favor, insira informações válidas

*** Keywords ***
#DAVI: No meu caso de teste ele não deveria preencher nada, neste caso, é necessário eu passar algum valor nulo eu só deixo registrado a Verificação de Notificação?
C13 Passar valor Nulo
    Input Text  id=nome_item  ${VAZIO-13}  
    Sleep    3s 

C13 Verificar Notificacao
    Alert Should Be Present        ${Alerta-C13}    timeout=10s
