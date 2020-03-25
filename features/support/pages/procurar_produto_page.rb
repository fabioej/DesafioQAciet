class ProcurarProdutoPage
    include Capybara::DSL

    def procurar(produto)
        find('#nm-autocomplete').set produto
        find(:id, 'nm-autocomplete').native.send_keys(:enter)
    end

    def selecionar
        find("h2>a[alt*='//www.carrefour.com.br/Console-Playstation-4-Mega-Pack-Bundle-Sony/p/MP21727378']").click
    end

    def entrar_carrinho
        find("a[href='/carrinho']")
    end

end