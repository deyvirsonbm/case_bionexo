Dado(/^que o usuário está logado$/) do
  steps '
      E que o usuário está na tela de login
	    E realizar o login
	    E visualiza a tela de usuário logado
  '
end

Dado(/^que o usuário está na tela de cadastro de produto$/) do
  steps '
      E que o usuário está logado
      E selecionar novo produto
      E visualiza a tela de cadastrar produto
  '
end

Dado(/^que o usuário está na tela de listar produtos$/) do
  steps '
      E que o usuário está logado
      E selecionar listar produtos
	    E visualiza a tela de produtos listados
  '
end
