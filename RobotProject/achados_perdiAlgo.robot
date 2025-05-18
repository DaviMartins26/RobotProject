*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

Acessar a pagina PerdiAlgo
    #Esse comando faz o robot esperar 5s até o elemento ficar visivel
    Wait Until Element Is Visible    id=link_perdi_algo
    Click Element                    id=link_perdi_algo
    Wait Until Element Is Visible    id=nome_item          timeout=5s 

Verificar Pagina PerdiAlgo
    Location Should Be    http://localhost/PUC-Achados/protocolo_perda/perdi_algo.php

Acionar o botão Enviar_Objeto
    Wait Until Element Is Visible    id=enviar_objeto
	Click Element    id=enviar_objeto
	Sleep    3s


