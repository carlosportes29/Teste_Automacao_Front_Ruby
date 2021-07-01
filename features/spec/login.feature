# language: pt
@login
Funcionalidade: Login no Ecommerce Fake
  Como um cliente do site FakeEcommerce.
  Ao realizar meu login com sucesso

  Contexto:
    Dado que esteja na página de login


  #####Completar o cenário abaixo##########
  @acesso_logado
  Esquema do Cenario: Login com sucesso
    Quando eu faço login com <usuario> e <senha>
    Então validar a <mensagem>

Exemplos:
    | usuario                      | senha      | mensagem |
    | "novoemailteste@gmail.com" | "teste123" | "MY ACCOUNT"|
      

#####Completar o cenário abaixo##########
@acesso_falhado
Esquema do Cenario: Login com falha    
    Quando eu faço login com <usuario> e <senha>
    Então validar a <mensagem> de alerta

    Exemplos:
      | usuario                    | senha             | mensagem                     |
      | "emailteste@gmail.com"     | ""                | "Password is required."      |
      | "emailteste@gmail.com"     | "123"             | "Invalid password."          |
      | "gmailteste@"              | "teste123"        | "Invalid email address."     |
      | "                    "     | "teste123"        | "An email address required." |
          