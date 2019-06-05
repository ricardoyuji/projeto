Feature: Efetuar um pedido de um celular no site
Scenario: Selecionar um celular e selecionar a forma de pagamento como boleto com sucesso
Given Navegador está na pagina do submarino com o login
When Eu seleciono um celular
And Coloco no carrinho
And Seleciono a opcao boleto na forma de pagamento
Then Recebo uma mensagem de confirmacao do pedido