*** Settings ***
#Esse é o documento "Padrão"
Documentation    Essa suíte testa o funcionalidades do projeto PUC_Achados
#Esse achados_login.robot chama os Logar como 
Resource         achados_login.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
CT1 - Realizar login com usuário adm
	[Documentation]    Esse teste verifica o login de um ADM
	[Tags]             login_userADM
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como ADM
    
CT2 - Realizar login com usuário FUN
	[Documentation]    Esse teste verifica o login de um usuario FUN
	[Tags]             login_userFUN
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como FUN

CT3 - Realizar login com usuário ALU
	[Documentation]    Esse teste verifica o login de um usuario ALU
	[Tags]             login_userALU
	Acessar a pagina home do site
    Acessar a pagina login
	Logar como ALU

