# Test Plannin


## Solicitação
Ao abrir o aplicativo da Senff, deve-se aceitar as permissões e permitir que o Senff faça e gerencie chamadas telefônicas. Quando clicar em "Pedir Cartão de Débito", o usuário deve ser direcionado para a página web "https://meucartao.senff.com.br/senff/bem-vindo".


## Tipo de Teste
Para este caso de teste, será utilizado o teste de automação mobile, com as ferramentas Appium e Genymotion.


## Automação
A automação será realizada em Python com a biblioteca RobotFramework, utilizando a biblioteca AppiumLibrary para escrever os cenários de teste em Gherkin do BDD.


## Casos de Teste

### Cenário 1: Aceitações
Dado que a janela de permissões do aplicativo da Senff está aberta
Quando o usuário clicar no botão "Entendi"
E clicar em "ALLOW"
Então o aplicativo da Senff deve ser aberto

### Cenário 2: Solicitar um cartão de débito
Dado que o aplicativo da Senff está aberto
Quando o usuário clicar em "Solicitar Cartão de Débito"
E for direcionado à página web
Então a página "meucartao.senff" deve ser aberta
