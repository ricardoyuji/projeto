Given(/^Navegador esta na pagina do submarino$/) do
 visit('https://www.submarino.com.br/')
end

When(/^Acesso a parte do login$/) do
 find(class: 'usr-act-text').hover
 find('#h_usr-signin').click
end 

When(/^Coloco o login e senha$/) do
 page.should have_content('Login do Cliente')
 find('#email-input').set('keyrustestautomation@gmail.com')
 find('#password-input').set('Keyrustest2019')
 click_button 'Continuar'
end

Then(/^Acesso a pagina principal com o login efetuado com sucesso$/) do
  nickname = find(class: 'usr-greeting').value
  expect(nickname).to has_content('Keyrus')
end