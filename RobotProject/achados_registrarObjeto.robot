*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

Acessar a pagina RegistrarObjeto
    #Esse comando faz o robot esperar 5s até o elemento ficar visivel
    Wait Until Element Is Visible    id=link_registrar_objeto
    Click Element                    id=link_registrar_objeto
    Wait Until Element Is Visible    id=nome_item          timeout=5s 

Verificar Pagina RegistrarObjeto
    Location Should Be    http://localhost/PUC-Achados/registrar_objeto/registrar_objeto.php

Acionar o botão Botao_Registrar
    Wait Until Element Is Visible    id=botao_registrar
	Click Element    id=botao_registrar
	Sleep    3s


