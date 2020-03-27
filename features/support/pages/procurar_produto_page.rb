class ProcurarProdutoPage
    include Capybara::DSL

    def procurar(produto)
        find('#nm-autocomplete').set produto
        find(:id, 'nm-autocomplete').native.send_keys(:enter)
    end

    def selecionar
        find("h2>a[alt*='//www.carrefour.com.br/Console-Playstation-4-Slim-1TB-com-3-Jogos-Days-Gone-Detroit-e-Rainbow-Six-Sony/p/MP17676186']").click
    end

    def entrar_carrinho
        find("a[href='/carrinho']")
    end

end