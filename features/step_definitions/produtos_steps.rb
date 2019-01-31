# Como boa pratica de automacao de testes, na pasta steps e realizado apenas
# as chamadas e alguns asseritons, onde toda a logica fica na page_screen

Dado(/^que o usuário está na tela de login$/) do
  @pp = ProdutosPage.new
  @pp.open_bio_page
  expect(@pp.assert_login_screen).to eql(MESSAGES[:LOGIN_SCREEN_TEXT])
end

Quando(/^realizar o login$/) do
  @pp.fill_email
  @pp.fill_pw
  @pp.click_enter_button
end

Então(/^visualiza a tela de usuário logado$/) do
  expect(@pp.assert_logged_screen).to eql(MESSAGES[:USER_LOGGED_TEXT])
end

Quando(/^selecionar (listar produtos|novo produto)$/) do |cond|
    if cond == 'listar produtos'
        @pp.select_list_products
    else
        @pp.select_new_product
    end
end

Então(/^visualiza a tela de (produtos listados|cadastrar produto)$/) do |cond|
  if cond == 'produtos listados'
    expect(@pp.assert_product_list).to eql(MESSAGES[:LIST_PRODUCT_SCREEN])
  else
    expect(@pp.assert_register_product_page).to eql(MESSAGES[:REGISTER_PRODUCT_SCREEN])
  end
end

Então(/^visualiza a mensagem de produto (criado|editado)$/) do |cond|
  if cond == 'criado'
    expect(@pp.assert_logged_screen).to eql(MESSAGES[:PRODUCT_CREATED_SUCCESS_MESSAGE])
  else
    expect(@pp.assert_logged_screen).to eql(MESSAGES[:PRODUCT_UPDATE_SUCCESS_MESSAGE])
  end
end
