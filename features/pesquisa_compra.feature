#language : pt

Funcionalidade: Fazer e validar busca
Como usuário do walmart
Para fazer pesquisa e validar que a mesma trouxe resultados
Eu quero buscar produtos e validar que houve resultados

Cenário: Buscar produto
Dado que eu esteja no site do Walmart
E clico no campo de Busca "Pesquisar"
E preencho o campo com o texto: "tv"
E clico no botão  "Lupa"
Então eu devo ver "Produtos" no resultado da pesquisa
E clico em um dos "Produtos" do resultado
Então eu devo ver a página do "Produto" aberta corretamente
E clico no link "Adicionar ao carrinho"
Então eu devo ver o modal "Sugestão de garantia extendida"
E clico no botão "Continuar" 
Então devo ver que o modal fechou e o produto foi adicionado ao carrinho
Então eu devo ver o "Meu carrinho" e o "Produto" presente nele