 # language: pt

Funcionalidade: Buscas no site Automation Practice
  Como um cliente do site Automation Practice
  Gostaria de buscar e adicionar o produto no carrinho
 
 Contexto:
    Dado que esteja na página inicial
 
 @carrinho
  Cenário: Realizar a Busca do produto a ser associado ao carrinho
    E buscar pelo produto 'shirt'
    Quando associo a "Printed Chiffon Dress" ao meu carrinho
    Então valido que o produto esta corretamente no carrinho