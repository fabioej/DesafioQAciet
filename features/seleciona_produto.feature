#language: pt


Funcionalidade: Comprar produto(s)
    Para que eu possa buscar por um determinado produto para comprar no site
    Sendo um usuario ja cadastrado e logado. A partir do resultado da busca,
    devo clicar produto desejado, entrar em suas especificações, adicionar o produto ao carrinho
    e selecionar a forma de pagamento como cartao de credito.

    Contexto: Login
       Dado que efetuo o login com o email "teste_ciet@outlook.com" and "ciet@2020"

    @comprar_produtos
    Esquema do Cenario: Comprar produto
        Dado que procuro pelo produto <produto>
        Quando incluo a quantidade de <quant> produto no carrinho
        Entao seleciono o frete desejado
        E incluo os dados do cartao de credito <numerocartao> <nome> <codseg>
        E sera exibida a <mensagem> de confirmacao das opcoes antes de finalizar a compra

        Exemplos:
        | produto         | quant | numerocartao       | nome         | codseg | mensagem                                       |
        | "Playstation 4" | 1     | "5162929477809999" | "Teste CIET" | "252"  | "Confira as opções escolhidas antes de finalizar" |
        | "Playstation 4" | 2     | "5162929477801111" | "Teste CIET" | "768"  | "Confira as opções escolhidas antes de finalizar" |

    
    # @um_produto
    # Cenario: Comprar 1 produto
    #     Dado que procuro pelo produto "playstation 4"
    #     Quando incluo a quantidade de 1 produto no carrinho
    #     Entao seleciono o frete desejado
    #     E incluo os dados do cartao de credito "5162929477809999" "TESTE CIeT" "353"
    
    # @dois_produtos
    # Cenario: Comprar 2 produtos
    #     Dado que procuro pelo produto "playstation 4"
    #     Quando incluo a quantidade de 2 produto no carrinho
    #     Entao seleciono o frete desejado
    #     E incluo os dados do cartao de credito "5162929477801111" "TESTE CIeT" "768"
