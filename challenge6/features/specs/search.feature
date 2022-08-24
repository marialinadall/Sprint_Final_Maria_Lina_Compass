#language: pt

@regression
@search

Funcionalidade: Busca
Como usuário do e-commerce Your Logo
Quero poder buscar por produtos
Para conseguir realizar minhas compras

    Contexto:
        Dado que esteja na Home

    @search_product
    Cenário: Busca por produto 
        Quando o usúario buscar um produto na barra de pesquisa
        Então deverá ser exibido resultados da busca

    @search_other_products
    Esquema do Cenário: Busca por diferentes produtos
        Quando o usúario buscar por "<produtos>" na barra de pesquisa
        Então deverá ser exibido resultados da busca

    Exemplos:

    |         produtos         |    
    |         blouses          |          
    |         t-shirts         |  

#primeira: vestidos
#segunda: blusas
#terceira: camisetas