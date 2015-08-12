#language : pt

Funcionalidade: Verificar retorno de API dos correios
Como xxx
Quero xxx
Para xxx


Cenário: Validar CEP existente
Dado que eu acesse a API do correio com o cep "07910210"
E o código de retorno da página seja "200"
E eu verei no campo "bairro" o valor "Jardim Professor Francisco Morato"
E eu verei no campo "logradouro" o valor "Rua João Mendes Júnior" 
E eu verei no campo "uf" o valor "SP"
E eu verei no campo "localidade" o valor "Francisco Morato"


Cenário: Validar CEP não existente
Dado que eu acesse a API do correio com o cep "00000000"
E o código de retorno da página seja "200"
E eu verei no campo "erro"
