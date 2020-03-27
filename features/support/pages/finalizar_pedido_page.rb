class FinalizarPedidoPage
    include Capybara::DSL

    def frete
        find('td', text: 'Econômica').click
    end

    def selecionar_forma_pagamento
        find("a[title='Cartão de crédito']")
    end

    def dados_cartao(num,nome,codseg)
        find('#numberCardInput').set num
        find('#nameCardInput').set nome
    
        find("option[label='1']").click
        find("option[label='2023']").click
        find('#codeCardInput').set codseg
    
        find("option[value='1']").click
    end

end