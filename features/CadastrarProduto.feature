# language: pt

Funcionalidade: Cadastrar Produto

@3
Cenário: Abrir tela cadastro produto
    Dado que o usuário está logado
    Quando selecionar novo produto
    Então visualiza a tela de cadastrar produto

@4
Cenário: Cadastrar Produto Sucesso - Enable
    Dado que o usuário está na tela de cadastro de produto
    Quando preencher os campos obrigatorios
    E tocar no botão Create Product
    Então visualiza a mensagem de produto criado

@5
Cenário: Cadastrar Produto Sucesso - Disable
    Dado que o usuário está na tela de cadastro de produto
    E preencher os campos obrigatorios
    E alterar o status do produto para Disable
    Quando tocar no botão Create Product
    Então visualiza a mensagem de produto criado

@6
Cenário: Cadastrar Produto Sucesso - Materiais Médicos
    Dado que o usuário está na tela de cadastro de produto
    E preencher os campos obrigatorios
    E alterar o tipo do produto
    Quando tocar no botão Create Product
    Então visualiza a mensagem de produto criado

@7
Cenário: Editar Produto Sucesso
    Dado que o usuário está na tela de listar produtos
    Quando selecionar um produto
    E editar o produto selecionado
    E tocar no botão Editar Produto
    Então visualiza a mensagem de produto editado