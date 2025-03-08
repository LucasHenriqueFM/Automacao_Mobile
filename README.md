## Como executar

Para executar a automação mobile, é necessário fazer algumas instalações e configurações.

### Instalações

- [Appium](https://github.com/appium/appium-desktop/releases)
- [Python](https://www.python.org/downloads/)
- [Java JDK.zip](https://www.oracle.com/java/technologies/downloads/#jdk23-windows)
- [Node.js](https://nodejs.org/en/download)
- [Android SDK](https://developer.android.com/tools/releases/platform-tools?hl=pt-br)
- [Android Studio](https://developer.android.com/studio?gad_source=1&gclid=CjwKCAiAzvC9BhADEiwAEhtlN2K4j0DeroIRPIMww2ZtA5A2Eb2wfObihPd2BvX9j0J8JZ036_qoCxoCJCAQAvD_BwE&gclsrc=aw.ds&hl=pt-br)
- [Robot Framework](https://apricot-myth-659.notion.site/Instala-es-825bd41455bd4d598fa934dc88e1d1c6#4bf71396226642a682c79079769dcb00)
- [AppiumLibrary]
- [Especionar elementos](https://github.com/appium/appium-inspector/releases)

Aplicativo Senff:
Para instalar o aplicativo Senff, siga as instruções:
1. Baixe o aplicativo Senff do site "https://senff-clientes.softonic.com.br/android".
2. Transfira o aplicativo baixado para o celular e instale-o.

### Configurações
- Em Path, adicione os seguintes valores:
    - Diretório do Android SDK
    - Diretório do Genymotion: `C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Genymotion`
    - Appium: Em "Editar Configurações", coloque o diretório onde o Android JDK foi instalado. O JAVA_HOME é o diretório do JDK (por exemplo, `C:\Program Files\Java\jdk1.8.0_351`)
- Código: No código, faça duas alterações:
    - Escolha a `platformVersion` com a versão instalada no celular, conforme exibido no Genymotion.
    - Insira o `deviceName`. Com o celular conectado, vá nas configurações gerais do celular ou encontre-o no topo do celular, por exemplo: `deviceName=192.168.111.102:5555`

### Configurações
- **Variável de ambiente para Java:**
    - Criar uma variável nova chamada JAVA_HOME e adicionar o diretorio da pasta JDK.
    - Adicionar pasta bin na variável "Path", basta clicar na pasta "Path" e procurar o diretorio da pasta "java\jdk-23.0.2\bin".

- **Variável de ambiete para Android SDK**
    - Extrair o arquio de download, e colar ele na pasta "Arquivos de Pogramas"
    - Criar uma nova variável com o nome "ANDROID_HOME", e com o valor sendo diretorio da pasta SDK "\platform-tools"
    - Na variável "Path" adicionar o mesmo caminho

- **Confirações do Appium**
    - c

### Execução

Depois de ter feito todas as instalações e configurações, siga as etapas abaixo para executar a automação:
1. Abra o Appium.
2. Inicie o dispositivo selecionado no Genymotion.
3. Execute o seguinte comando no terminal: `robot -d .\Logs -i Funcional .\Tests\testeAppium.robot`

**Observação**: Certifique-se de que o dispositivo esteja corretamente configurado e conectado antes de executar a automação.