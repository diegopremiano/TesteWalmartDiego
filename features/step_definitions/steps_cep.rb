Dado(/^que eu acesse a API do correio com o cep "([^"]*)"$/) do |cep|
  @response = HTTParty.get("http://cep.correiocontrol.com.br/#{cep}.json")
end

Dado(/^o código de retorno da página seja "([^"]*)"$/) do |arg1|
  expect(@response.code).to be(200)
end

Dado(/^eu verei no campo "([^"]*)" o valor "([^"]*)"$/) do |campo, valor| 
    expect(@response[campo]).to eq(valor)
end

Dado(/^eu verei no campo "([^"]*)"$/) do |campo|
  expect(@response.body).to include(campo)
end