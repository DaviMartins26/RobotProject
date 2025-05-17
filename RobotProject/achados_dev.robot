*** Settings ***
#Esse documento o davi ta usando pra testes
Documentation    Essa suíte testa o funcionalidades do projeto PUC_Achados
#Esse achados_login.robot chama os Logar como 
Resource         achados_browser.robot
Resource         achados_login.robot 
Resource         achados_davi.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
CT17 - Como usuário normal tentar registrar um objeto que Perdi com data de Perda de uma data do Futuro
	[Documentation]    Esse teste verifica o login de um ADM
	[Tags]             perda_fora_de_tempo
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como ALU
	Acessar a pagina PerdiAlgo
	Verificar Pagina Perda
	Escrever em Nome do Campo
	Reescrever Data
    

