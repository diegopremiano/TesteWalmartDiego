Dado(/^que eu esteja no site do Walmart$/) do
  visit 'http://www.walmart.com.br'
end

Dado(/^clico no campo de Busca "([^"]*)"$/) do |arg1|
  page.find(:xpath, '//*[@id="suggestion-search"]').click
 end

Dado(/^preencho o campo com o texto: "([^"]*)"$/) do |arg1|
  fill_in('suggestion-search', :with => 'tv')
end

Dado(/^clico no botão  "([^"]*)"$/) do |arg1|
   page.find(:xpath, '//*[@id="site-topbar"]/div[2]/form/button').click
end

E(/^eu devo ver "([^"]*)" no resultado da pesquisa$/) do |arg1|
  page.should have_content('Resultados de busca para')
end

Então(/^clico em um dos "([^"]*)" do resultado$/) do |arg1|
page.find(:xpath, '//a/span[@class="product-title"]',match: :first).click
 end

Então(/^eu devo ver a página do "([^"]*)" aberta corretamente$/) do |arg1|
      page.should have_content('Características do produto')
  end

Então(/^clico no link "([^"]*)"$/) do |arg1|
   page.find(:xpath, '//*[@id="buybox-Walmart"]/div[2]/div/div[4]/button/span[2]').click
end

Então(/^eu devo ver o modal "([^"]*)"$/) do |arg1|
page.should have_content('Contrate o Seguro Garantia Estendida Original e fique tranquilo ;)')
end

Então(/^clico no botão "([^"]*)"$/) do |arg1|
   page.find(:xpath, '//*[@id="navegaCarrinho"]').click
end

Então(/^devo ver que o modal fechou e o produto foi adicionado ao carrinho$/) do
page.should have_no_content('Contrate o Seguro Garantia Estendida Original e fique tranquilo ;)') 
end

Então(/^eu devo ver o "([^"]*)" e o "([^"]*)" presente nele$/) do |arg1, arg2|
    page.should have_content('Meu carrinho (1 item)')
  
end