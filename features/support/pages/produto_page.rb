class ProdutoPage
    include Capybara::DSL

    def quantidade_itens(quant)
        if quant > 1
            find('button.js-qty-selector-plus').click
        end
    end

    def click_comprar
        find('#buyProductButton').click
    end

    def continuar_compra
        find('#btn-checkout-carrinho').click
    end
    
end