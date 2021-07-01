# language: pt

Funcionalidade: Buscas no Fake Ecommerce
  Como um cliente do site FakeEcommerce
  Gostaria de poder buscar por produtos
  Para customizar as compras

  Contexto:
    Dado que esteja na página inicial

  @buscar_por_termo_valido
  Cenário: Buscar por termo válido
    Quando buscar pelo produto 'shirt'
    Então devem ser retornados produtos

  #####Completar o cenário abaixo#####

  @pesquisar_produto_sem_resultado
  Cenário: Busca sem resultados
   Quando buscar pelo produto 'calcao'
   Então deve ser retornada a mensagem 'No results were found for your search'
