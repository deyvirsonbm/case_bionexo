# language: pt

Funcionalidade: Listar Produto

@1
Cenário: Login na aplicação
	Dado que o usuário está na tela de login
	Quando realizar o login
	Então visualiza a tela de usuário logado 

@2
Cenário: Listar Produto
	Dado que o usuário está logado
	Quando selecionar listar produtos
	Então visualiza a tela de produtos listados 