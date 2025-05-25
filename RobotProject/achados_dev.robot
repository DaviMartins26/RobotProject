*** Settings ***
#Esse é o documento "Main" vamos colocar aqui apenas oq estiver pronto
Documentation    Essa suíte testa o funcionalidades do projeto PUC_Achados
#Controle de Browser
Resource         achados_browser.robot
#Acessar Pagina Perdi Algo
Resource         achados_perdiAlgo.robot
#Controle de Login
Resource         achados_login.robot 
#Comando pro Teste 30
Resource         achados_c18.robot


Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
CT20 - Tentar fazer Login com usuário não presente no banco de dados
	[Documentation]    Esse teste verifica o login de um usuario nao cadastrado
	[Tags]             login_usuario_inexistente

