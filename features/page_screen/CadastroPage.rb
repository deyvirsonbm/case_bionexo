require 'Faker'

class CadastroPage
  attr_accessor :driver

  # Onde e realizado o Page object da pagina para melhor manutencao
  def initialize
    @driver = $driver
    @product_name = 'product_name'
    @product_code = 'product_code'
    @product_manufacturer = 'product_manufacturer'
    @product_description = 'product_description'
    @product_price = 'product_price'
    @create_button = '//*[@id="new_product"]/div[3]/div[4]/div/div/input'
    @edit_button = 'commit'
    @status_option = '//*[@id="product_status"]/option[2]'
    @product_kind = '//*[@id="product_kind"]/option[2]'
    @select_product = '/html/body/div/table/tbody/tr[2]'
  end

  # gera um nome aleatorio
  def generate_product_name
    @driver.find_element(id: @product_name).send_keys(Faker::Science.element)
  end

  # gera um codigo aleatorio
  def generate_product_code
    @driver.find_element(id: @product_code).send_keys(Faker::Code.npi)
  end

  # gera um fabricante aleatorio
  def generate_product_manufacturer
    @driver.find_element(id: @product_manufacturer).send_keys(Faker::Company.industry)
  end

  # gera uma descrição aleatoria
  def generate_product_description
    @driver.find_element(id: @product_description).send_keys(Faker::Lorem.sentence(5))
  end

  # gera um preco aleatorio
  def generate_product_price
    @driver.find_element(id: @product_price).send_keys(Faker::Number.number(3))
  end

  # clina no botão para cadastrar produto
  def click_create_product_button
    @driver.find_element(xpath: @create_button).click
  end

  # muda o status do produto
  def change_to_disable
    @driver.find_element(xpath: @status_option).click
  end

  # muda o tipo de produto
  def change_product_type
    @driver.find_element(xpath: @product_kind).click
  end

  # um metodo que junta os outros metodos para ser chamado apenas uma vez no step
  def create_full_product
    generate_product_name
    generate_product_code
    generate_product_manufacturer
    generate_product_description
    generate_product_price
  end

  # seleciona um produto da lista
  def select_product_on_list
    @driver.find_element(xpath: @select_product).click
  end

  # clica no botão para editar produto
  def click_update_button
    @driver.find_element(name: @edit_button).click
  end
end
