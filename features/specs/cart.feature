#language: pt 

@regression
@cart 
Funcionalidade: Carrinho
Como usuário do e-commerce Your Logo
Quero poder utlizar as funcionalidades do carrinho com sucesso
Para poder ter uma experiência agradável com a aplicação

    Contexto: 
    Dado que escolha-se um produto para estar na página do carrinho 
   
    @delete_product_cart
    Cenário: Excluir produto do carrinho
        Quando excluir um produto do carrinho
        Então o produto deverá desaparecer da página do carrinho