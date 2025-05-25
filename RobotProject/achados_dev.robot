# ESTE DOCUMENTO ESTA SENDO USADO PARA ESTRUTURAR



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
Resource         achados_c25.robot
Resource        achados_meusProtocolos.robot


Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
CT25 - Como usuario generico tenta registrar objeto sem Nome 
	[Documentation]    Esse teste verifica se o sistema não registra um objeto preenchido de forma invalida por um ususario generico
	[Tags]             objeto_nomeInvalido_com_descricaoValida
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como ALU
	Acessar a pagina PerdiAlgo
    Verificar Pagina PerdiAlgo
	C25 Preencher Nome
    C25 Preencher Descricao
	Acionar o botão Enviar_Objeto
	C25 Verificar Notificacao
	Acessar a pagina meusProtocolos
    Verificar Pagina meusProtocolos
	C25 Preencher Filtro
	C25 Verificar Filtragem
