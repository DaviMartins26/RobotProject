# controle_browser.robot
*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${BROWSER}                     chrome

*** Keywords ***
Abrir o navegador
	Open Browser	browser=${BROWSER}
	Maximize Browser Window
	
Fechar o navegador
	Capture Page Screenshot
	Close Browser
