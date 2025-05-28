*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${emailC14}         funcionario@pucpr.br
${senhaC14}         fun

*** Keywords ***
C14 preencher com null
    Input Text    id=nome_item    ${SPACE}
    Sleep    2s
    Click Element    id=botao_registrar
	Sleep    2s

C14 Verificar Notificacao Credenciais Invalidas
    # Espera até 10 segundos para o alerta aparecer e verifica se a mensagem é a esperada
    Alert Should Be Present    Por favor, insira informações válidas   timeout=10s