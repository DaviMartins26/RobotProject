*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}		chrome 
${URL}			http://165.227.93.41/lojinha-web/
${USUARIO_ATIVO}	rafael
${SENHA_ATIVA}		123456
${FULL_NAME}		Rafael de Sousa
${USUARIO_INATIVO}	paulo
${SENHA_INATIVA}	111111
${MENSAGEM_FALHA_LOGIN}	Falha ao fazer o login


*** Keywords ***
Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window
	
Fechar o navegador
	Capture Page Screenshot
	Close Browser

Acessar a pagina home do site
	Go To	url=${URL}
		
Digitar no campo usuário o usuário ativo
	Input Text	css:input[name=usuario]	${USUARIO_ATIVO}
	
Digitar no campo senha a senha o usuário ativo
	Input Text	css:input[name=senha]	${SENHA_ATIVA}
	
Acionar o botão entrar
	Click Element	css:button[name='action']
	Sleep    3s
	
Verificar se nome do usuário aparece na tela de boas vindas
	Page Should Contain	Boas vindas, ${FULL_NAME}!
	
Digitar no campo usuário o usuário inativo
	Input Text	css:input[name=usuario]	${USUARIO_INATIVO}
	
Digitar no campo senha a senha o usuário inativo
	Input Text	css:input[name=senha]	${SENHA_INATIVA}
	Sleep    3s
	
Verificar mensagem de falha no login
	${MENSAGEM_TELA}=	Get webElement	id:toast-container
	Should Contain	${MENSAGEM_TELA.text}	${MENSAGEM_FALHA_LOGIN}






