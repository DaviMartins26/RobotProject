*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PAUSA}         2s
${emailC2}       adm@adm.com
${senhaC2}       ${EMPTY}

*** Keywords ***
C2 Tentar fazer Login sem informar a senha
    Input Text    id=email_id    ${emailC2}
    Sleep    ${PAUSA}
    Input Text    id=senha_id    ${senhaC2}
    Sleep    ${PAUSA}
    Click Element    id=enviar
    Sleep    ${PAUSA}

C2 Verificar Notificacao Preencha este campo
    # Captura a mensagem de validação do campo senha (id=senha_id)
    ${msg}=    Execute JavaScript    return document.getElementById('senha_id').validationMessage;
    Should Contain    ${msg}     Preencha este campo

