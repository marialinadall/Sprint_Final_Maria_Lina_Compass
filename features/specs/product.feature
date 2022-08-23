#language: pt 

@regression
@product
Funcionalidade: Página do Produto
Como usuário do e-commerce Your Logo
Quero poder personalizar meus produtos
Para ficar satisfeita com o produto a ser comprado

    Contexto: 
    Dado que esteja na página do produto

    @change_quantity
    Cenário: Alterar a quantidade do produto
        Quando alterar a quantidade de um produto na PDP
        Então deverá ser exibido a quantidade alterada do produto

    @change_color
    Cenário: Alterar cor do produto
        Quando trocar a cor do produto na PDP
        Então a imagem do produto deverá ser alterada 

    @add_to_cart
    Esquema do Cenário: Adicionar ao carrinho através da PDP
        Quando adicionar um produto ao carrinho 
        Então deverá ser adicionado com sucesso "<msg>"

    Exemplos:
    |                    msg                         |
    |Product successfully added to your shopping cart|

        