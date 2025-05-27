*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAUSA}         2s
${emailC2}       adm@adm.com
${senhaC2}       

*** Keywords ***
C2 Tentar fazer Login sem informar uma senha
    Input Text    id=email_id    ${emailC2}
    Sleep    ${PAUSA}
    # Garante que o campo senha está vazio
    Clear Element Text    id=senha_id
    Sleep    0.5s
    Element Attribute Value Should Be    id=senha_id    value    ${senhaC2}
    Click Element    id=enviar
    Sleep    ${PAUSA}

C2 Verificar Notificacao de Alerta
    ${alert_text}=    Handle Alert    action=ACCEPT
    Log    Mensagem do alerta: ${alert_text}
    Should Contain Any    ${alert_text}    Preencha este campo    Credenciais inválidas
