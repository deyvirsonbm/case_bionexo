# Classe usada para mapear elementos da pagina

class ProdutosPage
  attr_accessor :driver

  # Onde e realizado o Page object da pagina para melhor manutencao
  def initialize
    @driver = $driver
    @email_field = 'user_email'
    @pw_field = 'user_password'
    @enter_button = 'sign_in'
    @home_alert = 'flash_alert'
    @home_notice = 'flash_notice'
    @title_new_product_page = '/html/body/div/h1'
  end

  # Abrir o site
  def open_bio_page
    @driver.get 'http://qainterview.qa.cloud.bionexo.com.br/'
  end

  # preenche email
  def fill_email
    @driver.find_element(id: @email_field).send_keys(CREDENCIAIS[:USER_LOGIN][:EMAIL])
  end

  # preencher senha
  def fill_pw
    @driver.find_element(id: @pw_field).send_keys(CREDENCIAIS[:USER_LOGIN][:SENHA])
  end

  # clica no botão de entrar
  def click_enter_button
    @driver.find_element(id: @enter_button).click
  end

  # verifica que está na tela de login
  def assert_login_screen
    @driver.find_element(id: @home_alert).text
  end

  # verifica que usuário logou
  def assert_logged_screen
    @driver.find_element(id: @home_notice).text
  end

  # abre o menu de produtos
  def open_product_menu
    @driver.find_element(link_text: 'Produtos').click
  end

  # seleciona listar produtos após o menu ser aberto
  def select_list_products
    open_product_menu
    @driver.find_element(link_text: 'Listar Produtos').click
  end

  # seleciona novo produto após menu ser aberto
  def select_new_product
    open_product_menu
    @driver.find_element(link_text: 'Novo Produto').click
  end

  # verifica que está na tela de listar produto
  def assert_product_list
    @driver.find_element(link_text: 'Novo Produto').text
  end

  # verifica que está na tela de cadastrar produto
  def assert_register_product_page
    @driver.find_element(xpath: @title_new_product_page).text
  end
end
