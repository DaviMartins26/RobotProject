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
#Estes testes foram feitos apenas pra testar o Logar como ... depois serão colocados os testes de verdade aqui.
CT1 - Tentar fazer Login com usuário não presente no banco de dados
	[Documentation]    Esse teste verifica o login de um usuario nao cadastrado
	[Tags]             login_usuario_inexistente
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como usuario inexistente
    
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

CT14 - Como funcionário logado tentar cadastrar um objeto com os campos NULL
	[Documentation]    Esse teste tenta cadastrar campos do objeto como null/space
	[Tags]             campos_objeto_null
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como FUN
	
CT17 - Como usuário normal tentar registrar um objeto que Perdi com data de Perda de uma data do Futuro
	[Documentation]    Esse Simula um Aluno registando um objeto com data_perda invalida-Dia de amanha
	[Tags]             perda_fora_de_tempo
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como ALU
	Acessar a pagina PerdiAlgo
    Verificar Pagina PerdiAlgo
	Escrever em Nome do Campo
	Reescrever Data
    Acionar o botão Enviar_Objeto
	Verificar Notificacao De Sucesso
    
CT30 - Tentar acessar uma parte do sistema como usuario invalido usando URL
	[Documentation]    Acessar parte Interna do sistema com usuario invalido
	[Tags]             seguranca
	Acessar a pagina home do site
    Acessar a pagina login
	Logar como ALU
	Acessar a pagina gerenciar_fun
	Verificar Pagina Nao-Autorizado
