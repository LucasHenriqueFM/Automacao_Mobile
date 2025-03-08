*** Settings ***
Documentation    Essa suíte testa o aplicativo da Senff
Resource         ../Resources/teste.robot
Library          AppiumLibrary
Suite Setup      Abrir o aplicativo Senff

*** Test Cases ***


Cenário 01: Aceitações
    [Tags]  Funcional
    Dado que estou com a janela de Permissões aberta do aplicativo da Senff