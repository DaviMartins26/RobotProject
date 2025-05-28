*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAUSA}         2s
${emailC3}       admadm.com
${senhaC3}       adm486ç

*** Keywords ***
C3 Tentar fazer Login sem informar @ no e-mail
    Input Text    id=email_id    ${emailC3}
    Sleep    ${PAUSA}
    Input Text    id=senha_id    ${senhaC3}
    Sleep    ${PAUSA}
    Click Element    id=enviar
    Sleep    ${PAUSA}

C3 Verificar Notificacao Digite um endereço de e-mail
    # Captura a mensagem de validação do campo e-mail (id=email_id)
    
    ${msg}=    Execute JavaScript    return document.getElementById('email_id').validationMessage;
    Log    Mensagem capturada: >>${msg}<<
    Should Match Regexp    ${msg}    (?i)e[-–]mail

      

*** Test Cases ***
Teste Login sem informar @ no campo e-mail
    Open Browser    http://localhost:8000/login/login.html    Safari
    Maximize Browser Window
    C3 Tentar fazer Login sem informar @ no e-mail
    C3 Verificar Notificacao Digite um endereço de e-mail
    Close Browser
