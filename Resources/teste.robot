*** Settings ***


*** Variables ***


*** Keywords ***
Abrir o aplicativo Senff
    Open Application    http://localhost:4723/wd/hub    
    ...    platformName=Android    
    ...    platformVersion=8.0    
    ...    deviceName=192.168.111.102:5555       
    ...    appPackage=br.inf.rmi.senff 
    ...    appActivity=br.inf.rmi.senff.application.splash.view.activitys.Splash

### Cenário 01: Aceitações ###
Dado que estou com a janela de Permissões aberta do aplicativo da Senff
    AppiumLibrary.Element Should Be Visible    br.inf.rmi.senff:id/tvTitle
Quando clicar no botão "Entendi"
    AppiumLibrary.Wait Until Element Is Visible    id=br.inf.rmi.senff:id/buttonOk    timeout=10s
    AppiumLibrary.Click Element    id=br.inf.rmi.senff:id/buttonOk
E clicar em "ALLOW" 
    AppiumLibrary.Wait Until Element Is Visible    id=com.android.packageinstaller:id/permission_allow_button    timeout=10s
    AppiumLibrary.Click Element    id=com.android.packageinstaller:id/permission_allow_button
Então deve entrar no aplicativo da Senff	
    AppiumLibrary.Wait Until Element Is Visible    id=br.inf.rmi.senff:id/content_front    timeout=10s


### Cenário 02: Pedir um cartão de débito ###
Dado que estou com o aplicativo da Senff aberto
    AppiumLibrary.Wait Until Element Is Visible    id=br.inf.rmi.senff:id/content_front    timeout=10s
Quando clicar em "Pedir Cartão de Débito"
    AppiumLibrary.Click Element    id=br.inf.rmi.senff:id/button_do_card
E ser direcionado a página web
    AppiumLibrary.Wait Until Element Is Visible    id=org.chromium.webview_shell:id/url_field
Então deve entrar no site "meucartao.senff"
    AppiumLibrary.Wait Until Element Is Visible    id=org.chromium.webview_shell:id/container

