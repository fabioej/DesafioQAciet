Dado("que efetuo o login com o email {string} and {string}") do |usuario, senha|
    @login.go
    @login.entre
    @login.logar(usuario,senha)
end

Dado("que procuro pelo produto {string}") do |produto|
    @procurar_produto.procurar(produto)

    @procurar_produto.selecionar
    expect(page).to have_content produto
     # expect(page).to have_content "Console Playstation 4 Mega Pack Bundle - Sony"
end

Quando("incluo a quantidade de {int} produto no carrinho") do |quantidade|
    
    @produto.quantidade_itens(quantidade)
    @produto.click_comprar
    expect(page).to have_content "Resumo do pedido"
    @produto.continuar_compra
   
end

Entao("seleciono o frete desejado") do
    @pedido.frete.click
end
  
Entao("incluo os dados do cartao de credito {string} {string} {string}") do |numerocartao, nome, codseg|
    @pedido.selecionar_forma_pagamento.click
    sleep 2

    @pedido.dados_cartao(numerocartao,nome,codseg)
end

Entao("sera exibida a {string} de confirmacao das opcoes antes de finalizar a compra") do |msg|
    expect(page).to have_content msg
end