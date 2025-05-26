*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAUSA}         2s
${emailC3}        admadm.com
${senhaC3}      adm486ç-

*** Keywords ***
C3 Tentar fazer Login com usuario invalido sem usar @ no email
    Input Text    id=email_id    ${emailC3}
    Sleep    ${PAUSA}
    Input Text    id=senha_id    ${senhaC3}
    Sleep    ${PAUSA}
    Click Element    id=enviar
    Sleep    ${PAUSA}

C3 Verificar Notificacao Digite um endereço de email
    # Espera até 10 segundos para o alerta aparecer e verifica se a mensagem é a esperada
    Alert Should Be Present    Digite um endereço de email   timeout=10s