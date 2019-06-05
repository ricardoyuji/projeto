Feature: Efetuar login no ecommerce
Scenario: Acessar a pagina do submarino e logar com o usuario e senha        
Given Navegador esta na pagina do submarino
When Acesso a parte do login
And Coloco o login e senha
Then Acesso a pagina principal com o login efetuado com sucesso