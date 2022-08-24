#language: pt 

@regression
@checkout
Funcionalidade: Checkout 
Como usuário do e-commerce Your Logo
Quero poder prosseguir com o Checkout
Para realizar a compra

    Contexto: 
        Dado que o usuário adicionou um produto no carrinho

    @payment_bank
    Esquema do Cenário: validar pagamento via transferência 
        Quando logar com "<email>" e "<senha>" válidos
        E escolher um endereço para entrega 
        E escolher o tipo de entrega 
        E selecionar a forma de pagamento via transferência "<via_bank>"
        Então o usuário clicará em I confirm my order e realizará a compra
    
     Exemplos:

    |           email          |    senha     |               via_bank              |
    |     teste123@gmail.com   |   123456     |          Pay by bank wire           |

    
    @payment_check
    Esquema do Cenário: Validar pagamento via cheque
        Quando logar com "<email>" e "<senha>" válidos
        E escolher um endereço para entrega 
        E escolher o tipo de entrega 
        E selecionar a forma de pagamento via cheque "<via_check>"
        Então o usuário clicará em I confirm my order e realizará a compra
    
     Exemplos:

    |           email          |    senha    |               via_check            |
    |     teste123@gmail.com   |   123456    |             Pay by check           |


    