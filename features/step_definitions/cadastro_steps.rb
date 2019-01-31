Quando(/^preencher os campos obrigatorios$/) do
  @cp = CadastroPage.new
  @cp.create_full_product
end

Quando(/^tocar no botão (Create Product|Editar Produto)$/) do |cond|
  if cond == 'Create Product'
    @cp.click_create_product_button
  else
    @cp.click_update_button
  end
end

Quando(/^alterar o status do produto para Disable$/) do
  @cp.change_to_disable
end

Quando(/^alterar o tipo do produto$/) do
  @cp.change_product_type
end

Quando(/^selecionar um produto$/) do
  @cp = CadastroPage.new
  @cp.select_product_on_list
end

Quando(/^editar o produto selecionado$/) do
  @cp.create_full_product
end
