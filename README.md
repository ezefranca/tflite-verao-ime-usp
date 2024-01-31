
# TensorFlow Lite Verão IME-USP

Projetos desenvolvidos no curso de verão (Android), convertidos para iOS.

## Começando

Estas instruções irão te ajudar a configurar o projeto em sua máquina local para fins de desenvolvimento e testes.

### Pré-requisitos

Requisitos: Xcode 15.2 ou Superior

O que você precisa para instalar o software e como instalá-lo.

```bash
git clone https://github.com/ezefranca/tflite-verao-ime-usp.git
cd tflite-verao-ime-us
```

### Instalação

Passo a passo que te guiará pelo processo de configuração do ambiente de desenvolvimento.

1. Instale o [Homebrew](https://brew.sh) (se ainda não estiver instalado):
```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
3. Instale o [Bundler](https://brew.sh) (se ainda não estiver instalado):
```sh
brew install rbenv-bundler
```
3. Instale as dependências do projeto definidas no Gemfile:
```sh
bundle install
```
4. Instale as dependências do CocoaPods:
```sh
pod install
```

5. Abra o arquivo `.xcworkspace` gerado para iniciar seu projeto no Xcode:
```bash
open tflite-verao-ime-usp.xcworkspace
```

## Uso

Cada Aula está separada em uma View própria (Aula1View, Aula2View, etc)
