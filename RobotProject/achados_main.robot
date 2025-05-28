*** Settings ***
#Esse é o documento "Main" vamos colocar aqui apenas oq estiver pronto
Documentation    Essa suíte testa o funcionalidades do projeto PUC_Achados
#Controle de Browser
Resource         achados_browser.robot
#Controle de Login
Resource         achados_login.robot 
#Acessar Pagina Perdi Algo
Resource         achados_perdiAlgo.robot
#Acessar Pagina Registrar Objeto
Resource         achados_registrarObjeto.robot
#Acessar Pagina Meus Protolocos
Resource         achados_meusProtocolos.robot
#Acessaer Pagina Criar Conta
Resource         achados_criarConta.robot
#Comandos para o Caso 01
Resource         achados_c1.robot
#Comandos para o Caso 13
Resource         achados_c13.robot
#Comandos para o Caso 14
Resource         achados_c14.robot
#Comandos para o Caso 16
Resource         achados_c16.robot
#Comandos para o Caso 17
Resource         achados_c17.robot
#Comandos para o Caso 18
Resource         achados_c18.robot
#Comandos para o Caso 20
Resource         achados_c20.robot
#Comandos para o Caso 25
Resource         achados_c25.robot



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

CT13 - Como funcionário logado tentar cadastrar um objeto com os campos vazios
	[Documentation]    Esse Simula um funcionario registando um objeto com os campos nome_item, tipo-do-item e bloco-de-encontro não preenchidos 
	[Tags]             registrar_objeto_achado
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como FUN
	Acessar a pagina RegistrarObjeto
    Verificar Pagina RegistrarObjeto
	C13 Passar valor Nulo
    Acionar o botão Botao_Registrar
	C13 Verificar Notificacao

	
CT14 - Como funcionário logado tentar cadastrar um objeto com os campos NULL
	[Documentation]    Esse teste tenta cadastrar campos do objeto como null/space
	[Tags]             campos_objeto_null
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como FUN
    Acessar a pagina RegistrarObjeto
	C14 preencher com null
    C14 Verificar Notificacao Credenciais Invalidas
    
CT16 - Como usuário normal tentar registrar um objeto que perdi passando os campos Null
	[Documentation]    Esse Simula um usuario registando um objeto com o campo nome_item nullo
	[Tags]             perda_futura
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como ALU
	Acessar a pagina PerdiAlgo 
    Verificar Pagina PerdiAlgo
	C16 Passar valor Nulo
    Acionar o botão Enviar_Objeto
	C16 Verificar Notificacao

CT17 - Como usuário normal tentar registrar um objeto que Perdi com data de Perda de uma data do Futuro
	[Documentation]    Esse Simula um usuario registando um objeto com data_perda invalida-Dia de amanha
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

CT18 - Como usuário normal tentar registrar um objeto que Perdi com data de perda Passada
	[Documentation]    Teste que registando um objeto com data_perda invalida- mais de uma semana de perda- por regra de negocio
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

CT20 - Como usuário normal tentar registrar um objeto que Perdi passando o nome como Null mas com Descrição
	[Documentation]    Esse teste verifica se o sistema não registra um objeto preenchido de forma invalida-De acordo com regra de negocio- por um ususario normal
	[Tags]             objeto_nomeInvalido_com_descricaoValida
	Acessar a pagina home do site
    Acessar a pagina login
    Logar como ALU
	Acessar a pagina PerdiAlgo
    Verificar Pagina PerdiAlgo
	C20 Passar valor Nulo
	C20 Preencher Descricao
    Acionar o botão Enviar_Objeto
	C20 Verificar Notificacao

CT25 - Fazer um Protocolo e ver se o mesmo aparece em Meus Protocolos
	[Documentation]    Esse teste verifica se o protocolo registrado pelo usuario generico pode ser acessado pelo mesmo em Meus Protocolos
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

