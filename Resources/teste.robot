*** Settings ***


*** Variables ***


*** Keywords ***
Abrir o aplicativo Senff
    Open Application    http://localhost:4723/wd/hub    
    ...    platformName=Android    
    ...    platformVersion=15    
    ...    deviceName=appPackage       
    ...    appPackage=br.inf.rmi.senff 
    ...    appActivity=.application.version.ForceUpdateActivity

### Cenário 01: Aceitações ###
