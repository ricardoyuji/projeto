Given(/^Navegador está na pagina do submarino com o login$/) do
 visit('https://www.submarino.com.br/')
 find(class: 'usr-act-text').hover
 find('#h_usr-signin').click
 page.should have_content('Login do Cliente')
 find('#email-input').set('keyrustestautomation@gmail.com')
 find('#password-input').set('Keyrustest2019')
 click_button 'Continuar'
end

When(/^Eu seleciono um celular$/) do
  find('#h_search-input').set('celular')
  find('#h_search-btn').click
end 

When(/^Coloco no carrinho$/) do
 sleep 3
 page.should have_content('produtos')
 first('.product-grid-item').click
 page.should have_content('Vendido e entregue')
 find('.buy-button-container').click
 click_button 'Continuar'
 click_button 'Continuar'
end

When(/^Seleciono a opcao boleto na forma de pagamento$/) do
 page.should have_content('Endereço de entrega')
 page.all('span', text: 'Quox')[3].click
end

Then(/^Recebo uma mensagem de confirmacao do pedido$/) do
  page.should have_content('pedido')
end