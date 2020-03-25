#language: pt

Funcionalidade: Limpar carrinho
    Apos eu ter incluido itens no carrinho de compras do site,
    eu devo validar a função de remoção destes itens do carrinho.

    Contexto: Login
        Dado que efetuo o login com o email "teste_ciet@outlook.com" and "ciet@2020"

    @deletar_carrinho
    Cenario: Deletar Produto
        Dado que entro no carrinho
        Quando seleciono a exclusao do item a mensagem "Tem certeza que quer tirar do carrinho?" é exibida
        Entao o carrinho vazio deve apresentar a mensagem "O seu carrinho ainda está vazio."