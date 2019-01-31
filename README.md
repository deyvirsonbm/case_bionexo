# Case - Bionexo


#### Dependencies
* Ruby
* Bundle

#### Setup
* bundle install

#### Run
* Para rodar todos os cenários utilizar na raiz do projeto o comando: cucumber
* Para rodar cenários específico utilizar na raiz do projeto o comando: cucumber -t @1, -t @2 [...] -t @7

### Análise estática de código (Se quiser)
* Na raiz do projeto executar o comando: rubocop

### Abordagem utilizada
* Foi utilizado a abordagem de session based testing, que consiste em fazer algumas
* seções de testes exploratórios em uma determinada área da aplicação, foram usadas
* sessões de 15 minutos nas seguintes áreas: Listar Produto, Cadastrar Produto e 
* Editar Produto