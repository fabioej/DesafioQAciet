class CarrinhoPage
    include Capybara::DSL

    def excluir_item
        find("a[data-product-code='MO21730001']", text: 'Excluir').click
        #qnt_item = find("h1.blockMain__cartListTitle").text
        #verifica cabeçalho para definir se tem um ou mais itens no carrinho
        # if qnt_item == "(1 item)"
        #     find("a[data-product-code='MO21730001']", text: 'Excluir').click
        # else
        #     find('button.js-qty-selector-minus').click
        # end
    end

    def sim
        click_link("Sim")
    end

end