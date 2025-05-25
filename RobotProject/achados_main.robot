*** Settings ***
#Esse é o documento "Main" vamos colocar aqui apenas oq estiver pronto
Documentation    Essa suíte testa o funcionalidades do projeto PUC_Achados
#Controle de Browser
Resource         achados_browser.robot
#Controle de Login
Resource         achados_login.robot 
#Acessar Pagina Perdi Algo
Resource         achados_perdiAlgo.robot
#Comando para o Caso 01
Resource         achados_c1.robot
#Comando para o Caso 14
Resource         achados_c14.robot
#Comando para o Caso 17
Resource         achados_c17.robot
#Comando para o Caso 18
Resource         achados_c18.robot


Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
#Estes testes foram feitos apenas pra testar o Logar como ... depois serão colocados os testes de verdade aqui.
CT1 - Tentar fazer Login com usuário não presente no banco de dados
	[Documentation]    Esse teste verifica o login de um usuario nao cadastrado
	[Tags]             login_usuario_inexistente
	Acessar a pagina home do site
    Acessar a pagina login
    C1 Logar como usuario inexistente
	C1 Verificar Notificacao Credenciais Invalidas
	
CT14 - Como funcionário logado tentar cadastrar um objeto com os campos NULL
	[Documentation]    Esse teste tenta cadastrar campos do objeto como null/space
	[Tags]             campos_objeto_null
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como FUN
	
CT17 - Como usuário normal tentar registrar um objeto que Perdi com data de Perda de uma data do Futuro
	[Documentation]    Esse Simula um Aluno registando um objeto com data_perda invalida-Dia de amanha
	[Tags]             perda_futura
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como ALU
	Acessar a pagina PerdiAlgo
    Verificar Pagina PerdiAlgo
	C17 Escrever em Nome do Campo
	C17 Reescrever Data Futuro
    Acionar o botão Enviar_Objeto
	C17 Verificar Notificacao De Sucesso 

CT18 - Como usuário normal tentar registrar um objeto que Perdi com data de Perda de uma data do Futuro
	[Documentation]    Esse Simula um Aluno registando um objeto com data_perda invalida- mais de uma semana de perda, por regra de negocio
	[Tags]             perda_fora_de_tempo_de_registro
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como ALU
	Acessar a pagina PerdiAlgo
    Verificar Pagina PerdiAlgo
	C18 Escrever em Nome do Campo
    C18 Reescrever Data Passado
    Acionar o botão Enviar_Objeto
	C18 Verificar Notificacao De Sucesso
