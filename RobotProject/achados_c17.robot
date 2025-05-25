*** Settings ***
Library    SeleniumLibrary
Library    DateTime

*** Variables ***

${Termo-C17}  Teste17
*** Keywords ***

C17 Escrever em Nome do Campo
    Input Text  id=nome_item  ${Termo-C17}

C17 Reescrever Data Futuro
    [Arguments]    ${dias_no_futuro}=1
    ${data_hoje}=    Get Current Date    result_format=%Y-%m-%d
    ${data_futura}=  Add Time To Date    ${data_hoje}    +${dias_no_futuro} days    result_format=%Y-%m-%d
    Log To Console   A data futura para o campo é: ${data_futura}
    Sleep    3s

    Wait Until Element Is Visible    id=data_perda
    # Define o valor do campo de input 'data_perda' usando JavaScript
    Execute Javascript               document.getElementById('data_perda').value = '${data_futura}';
    Sleep    3s

C17 Verificar Notificacao De Sucesso
    # Espera até 10 segundos para o alerta aparecer e verifica se a mensagem é a esperada
    Alert Should Be Present    Informe uma Data Valida!    timeout=10s


