Como executar:
	Para executar a automação mobile, é necessário fazer algumas instalações e configurações.
 
 Instalações:
	• Appium
	• Genymontion
	• Python
	• Google chrome
	• Chromedriver (com a mesma versão do google chrome)
		• Instalar o Chromedriver no diretório Scripts do pythonm "AppData\Local\Programs\Python\Python310\Scripts"
	• VSCode
	• Android SDK Tools Setup
	• Robotframework
	• Aplicativo Senff: Para instalar o plicativo Senff, é só instalar pelo site "https://senff-clientes.softonic.com.br/android" e jogar da pasta de download para o celular, que será instalado.

Configurações:
	• Variáveis de ambiente:
		• Nome da Variável: ANDROID_HOME, Valor: Local onde o android-sdk foi instalado
		• Em Path, crie novos valores:
		• Diretório android-sdk
		• Diretório do Genymotion: C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Genymotion
	• Appium: Em "Editar Configurações", coloque o diretório de onde o Android JDK foi instalado, e o JAVA_HOME é o diretório do jdk (C:\Program Files\Java\jdk1.8.0_351)
	• Genymotion: O Genymotion não precisa de configuração, apenas instale o celular novo. Para rodar sem erro, instale o celular Google Nexus 7 com a versão do Android 8.0.
	• Código: No código, faça duas alterações:
		• A primeira é escolher a platformVersion com a versão instalada no celular, que aparece no Genymotion.
		• A segunda é colocar o deviceName. Com o celular aberto, vá nas configurações gerais do celular ou encontre-o no topo do celular, por exemplo: deviceName=192.168.111.102:5555

Execução:	
	Depois de ter feito todas as instalações e todas configurações, é só abrir o appium, abrir o seu celular no Genymontion,e rodar rodar com o comando "robot -d .\Logs -i Funcional .\Tests\testeAppium.robot".

	

