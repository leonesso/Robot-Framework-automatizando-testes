*** Settings ***
Resource          ../Resources/main.robot
Test Setup        Dado que eu acesse o Organo
Test Teardown     Fechar o navegador



*** Test Cases ***
TC01 - Verificar se ao preencher os campos do formulário corretamente os dados são inseridos na lista e se um novo card é criado no time esperado
    Dado que preencha os campos do form com time    ${selecionar_times}[0]
    E Clique no Botão Criar card
    Então identificar o card dentro do time esperado

TC02 - Verificar se é possível criar mais de um card se preenchermos os campos corretamente
    FOR    ${i}    IN RANGE    1    4
        Dado que preencha os campos do form com time    ${selecionar_times}[0]
        E Clique no Botão Criar card
    END
    Então identificar 3 cards no time esperado

TC03 - Verificar se é possível criar um card para cada time disponível se preenchermos os campos corretamente
    Então criar e identificar um card em cada time disponível

