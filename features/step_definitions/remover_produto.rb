Dado("que entro no carrinho") do
    @procurar_produto.entrar_carrinho.click
end

Quando("seleciono a exclusao do item a mensagem {string} é exibida") do |mensagem|
    @carrinho.excluir_item
    expect(page).to have_content mensagem
    @carrinho.sim
end

Entao("o carrinho vazio deve apresentar a mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
end