*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${URL}			    http://localhost/PUC-Achados/
${USUARIO_ADM}      adm@adm.com
${SENHA_ADM}        adm486ç-
${NAME_ADM}         adm_nome
${USUARIO_FUN}      funcionario@pucpr.br
${SENHA_FUN}        fun486ç-
${NAME_FUN}         Funcionário Generico
${USUARIO_ALU}      aluno@pucpr.edu.br
${SENHA_ALU}        aluno486ç-
${NAME_ALU}         Aluno Generico



*** Keywords ***
Acessar a pagina home do site
	Go To	url=${URL}

Acessar a pagina login
    Click Element    css=a[id="login_sem_cadastro"] img

Acionar o botão entrar
	Click Element    css:input[id=enviar]
	Sleep    3s

#Chame para fazer Login
Logar como ADM
    Input Text	css:input[id=email_id]	${USUARIO_ADM}
	Input Text	css:input[id=senha_id]	${SENHA_ADM}
	Click Element    css:input[id=enviar]
	Sleep    3s
	Page Should Contain	 ${NAME_ADM}

Logar como FUN
    Input Text	css:input[id=email_id]	${USUARIO_FUN}
	Input Text	css:input[id=senha_id]	${SENHA_FUN}
	Click Element    css:input[id=enviar]
	Sleep    3s
	Page Should Contain	 ${NAME_FUN}

Logar como ALU
	Input Text	css:input[id=email_id]	${USUARIO_ALU}
	Input Text	css:input[id=senha_id]	${SENHA_ALU}
	Click Element    css:input[id=enviar]
	Sleep    3s
	Page Should Contain	 ${NAME_ALU}

