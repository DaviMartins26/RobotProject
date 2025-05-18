*** Settings ***
#Esse é o documento "Main" vamos colocar aqui apenas oq estiver pronto
Documentation    Essa suíte testa o funcionalidades do projeto PUC_Achados
#Controle de Browser
Resource         achados_browser.robot
#Acessar Pagina Perdi Algo
Resource         achados_perdiAlgo.robot
#Controle de Login
Resource         achados_login.robot 
#Comandos pro Teste 17
Resource         achados_c17.robot
#Comando pro Teste 30
Resource         achados_c30.robot


Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

CT30 - Tentar acessar uma parte do sistema como usuario invalido usando URL
	[Documentation]    Acessar parte Interna do sistema com usuario invalido
	[Tags]             seguranca
	Acessar a pagina home do site
    Acessar a pagina login
	Logar como ALU
	Acessar a pagina gerenciar_fun
	Verificar Pagina Nao-Autorizado

    

