*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAUSA}         2s
${emailC2}        adm@adm.com
${senhaC2}      

*** Keywords ***
C2 Tentar fazer Login sem informar uma senha
    Input Text    id=email_id    ${emailC2}
    Sleep    ${PAUSA}
    Input Text    id=senha_id    ${senhaC2}
    Sleep    ${PAUSA}
    Click Element    id=enviar
    Sleep    ${PAUSA}

C2 Verificar Notificacao Preencha este campo
    # Espera até 10 segundos para o alerta aparecer e verifica se a mensagem é a esperada
    Alert Should Be Present    Preencha este campo   timeout=10s