*** Settings ***
Documentation    Essa suíte testa o aplicativo da Senff
Resource         ../Resources/teste.robot
Library          AppiumLibrary
Suite Setup      Abrir o aplicativo Senff

*** Test Cases ***


Cenário 01: Aceitações
    [Tags]  Funcional
    Dado que estou com a janela de Permissões aberta do aplicativo da Senff
    Quando clicar no botão "Entendi"
    E clicar em "ALLOW"
    Então deve entrar no aplicativo da Senff

Cenário 02: Pedir um cartão de débito
    [Tags]  Funcional
    Dado que estou com o aplicativo da Senff aberto
    Quando clicar em "Pedir Cartão de Débito"
    E ser direcionado a página web
    Então deve entrar no site "meucartao.senff"