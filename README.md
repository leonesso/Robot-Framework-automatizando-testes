# Projeto de Testes Automatizados com Robot Framework

Este projeto foi desenvolvido durante o curso "Robot Framework: automatizando testes no padrão BDD" da Alura, ministrado pela instrutora Caroline Carvalho. O objetivo do projeto é aplicar os conhecimentos adquiridos sobre o Robot Framework para automatizar testes de um sistema web, utilizando o padrão Page Object Model (POM) para organizar e reaproveitar o código de forma eficiente.

## Estrutura do Projeto

A estrutura do projeto é organizada da seguinte maneira:
      curso-robot-alura/
      ├── .vscode/
      ├── Resources/
      │ ├── pages/
      │ │ └── cadastro.robot
      │ ├── shared/
      │ │ ├── setup_teardown.robot
      │ │ └── main.robot
      ├── Testes/
      │ └── preenchimento_correto.robot
      ├── README.md

### Descrição das Pastas e Arquivos

- **Resources/pages/cadastro.robot**: Keywords para a página de cadastro.
- **Resources/shared/setup_teardown.robot**: Keywords de setup e teardown.
- **Testes/preenchimento_correto.robot**: Testes que utilizam as keywords definidas.

## Requisitos

- Python 3.x
- Robot Framework
- SeleniumLibrary
- FakerLibrary
- WebDriver (ChromeDriver, GeckoDriver, etc.)

## Instalação

1. Clone o repositório:
    ```sh
    git clone https://github.com/seu-usuario/curso-robot-alura.git
    cd curso-robot-alura
    ```

2. Instale as dependências:
    ```sh
    pip install robotframework
    pip install robotframework-seleniumlibrary
    pip install robotframework-faker
    ```

3. Configure o WebDriver:
    - [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/)
    - [GeckoDriver](https://github.com/mozilla/geckodriver/releases)

## Execução dos Testes

Para executar os testes, utilize o seguinte comando:
```sh
robot Testes/preenchimento_correto.robot


##Contribuição
Contribuições são bem-vindas! Envie pull requests ou reporte issues.
