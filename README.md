
# TensorFlow Lite Verão IME-USP

Projetos convertidos para iOS que foram desenvolvidos no curso [450400285 - Introdução ao TensorFlow Lite para dispositivos Android](https://uspdigital.usp.br/apolo/apoObterCurso?cod_curso=450400285&cod_edicao=23001&numseqofeedi=1), do Instituto de Matemática e Estatística (IME-USP), ministrado pelos professores [Artur André Almeida de Macedo Oliveira](https://github.com/arturandre) e [Roberto Hirata](https://github.com/rhiratajr).

## Começando

Estas instruções irão te ajudar a configurar o projeto em sua máquina local para fins de desenvolvimento e testes.

### Pré-requisitos

Requisitos: Xcode 15.2 ou Superior

O que você precisa para instalar o software e como instalá-lo.

```bash
git clone https://github.com/ezefranca/tflite-verao-ime-usp.git
cd tflite-verao-ime-usp
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
