*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAUSA}         2s
${emailC1}         usuarioinexistente@teste.com
${senhaC1}         123

*** Keywords ***
C1 Logar como usuario inexistente
    Input Text    id=email_id    ${emailC1}
    Sleep    ${PAUSA}
    Input Text    id=senha_id    ${senhaC1}
    Sleep    ${PAUSA}
    Click Element    id=enviar
    Sleep    ${PAUSA}

C1 Verificar Notificacao Credenciais Invalidas
    # Espera até 10 segundos para o alerta aparecer e verifica se a mensagem é a esperada
    Alert Should Be Present    Credenciais Inválidas   timeout=10s

