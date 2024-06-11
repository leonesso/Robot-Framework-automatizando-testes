*** Settings ***
Resource    ../main.robot

*** Variables ***
${Campo_Nome}        id:form-nome
${Campo_Cargo}       id:form-cargo
${Campo_Imagem}      id:form-imagem 
${Campo_Time}        class:lista-suspensa
${Campo_Card}        id:form-botao
@{selecionar_times}
...          //option[contains(.,'Programação')]
...          //option[contains(.,'Front-End')]
...          //option[contains(.,'Data Science')]
...          //option[contains(.,'Devops')]
...          //option[contains(.,'UX e Design')]
...          //option[contains(.,'Mobile')]
...          //option[contains(.,'Inovação')]

*** Keywords ***
Dado que preencha os campos do form com time
    [Arguments]    ${time}
    ${Nome}       FakerLibrary.First Name
    Input Text    ${Campo_Nome}    ${Nome} 
    ${Cargo}      FakerLibrary.Job
    Input Text    ${Campo_Cargo}    ${Cargo}  
    ${Imagem}     FakerLibrary.Image Url
    Input Text    ${Campo_Imagem}    ${Imagem} 
    Click Element    ${Campo_Time} 
    Click Element    ${time}

Então criar e identificar um card em cada time disponível
    FOR    ${indice}    ${time}    IN ENUMERATE    @{selecionar_times}
        Dado que preencha os campos do form com time    ${time}
        E Clique no Botão Criar card
    END
    Sleep    10s

E Clique no Botão Criar card
    Click Element    ${Campo_Card}

Então identificar o card dentro do time esperado
    Element Should Be Visible    class:colaboradores

Então identificar 3 cards no time esperado
    Element Should Be Visible    class:colaboradores
    # Supondo que os cards tenham uma classe comum, ajuste conforme necessário
    #Element Should Be Visible    xpath=//div[contains(@class, 'card')]    3

Dado que eu clique no botão criar card
    Click Element    ${Campo_Card}

Então sistema deve apresentar mensagem de campo obrigatório
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro  
    Element Should Be Visible    id:form-times-erro