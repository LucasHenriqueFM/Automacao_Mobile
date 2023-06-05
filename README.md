## Como executar

Para executar a automação mobile, é necessário fazer algumas instalações e configurações.

### Instalações

- Appium
- Genymotion
- Python
- Google Chrome
- Chromedriver (com a mesma versão do Google Chrome)
- Instalar o Chromedriver no diretório Scripts do Python: `AppData\Local\Programs\Python\Python310\Scripts`
- VSCode
- Android SDK Tools Setup
- Robot Framework

Aplicativo Senff:
Para instalar o aplicativo Senff, siga as instruções:
1. Baixe o aplicativo Senff do site "https://senff-clientes.softonic.com.br/android".
2. Transfira o aplicativo baixado para o celular e instale-o.

### Configurações

- Variáveis de ambiente:
    - Nome da Variável: ANDROID_HOME
    - Valor: Local onde o Android SDK foi instalado
- Em Path, adicione os seguintes valores:
    - Diretório do Android SDK
    - Diretório do Genymotion: `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Genymotion`
    - Appium: Em "Editar Configurações", coloque o diretório onde o Android JDK foi instalado. O JAVA_HOME é o diretório do JDK (por exemplo, `C:\Program Files\Java\jdk1.8.0_351`)
- Genymotion: O Genymotion não precisa de configuração adicional. Basta instalar um dispositivo novo. Para evitar erros, instale o celular Google Nexus 7 com a versão do Android 8.0.
- Código: No código, faça duas alterações:
    - Escolha a `platformVersion` com a versão instalada no celular, conforme exibido no Genymotion.
    - Insira o `deviceName`. Com o celular conectado, vá nas configurações gerais do celular ou encontre-o no topo do celular, por exemplo: `deviceName=192.168.111.102:5555`

### Execução

Depois de ter feito todas as instalações e configurações, siga as etapas abaixo para executar a automação:
1. Abra o Appium.
2. Inicie o dispositivo selecionado no Genymotion.
3. Execute o seguinte comando no terminal: `robot -d .\Logs -i Funcional .\Tests\testeAppium.robot`

Observação: Certifique-se de que o dispositivo esteja corretamente configurado e conectado antes de executar a automação.