#language: pt

@regression
@register 

Funcionalidade: Cadastro
Como usuário do e-commerce Your Logo
Quero poder fazer o cadastro no site
Para realizar compras

    Contexto:
        Dado que esteja na página de Authentication do e-commerce em questão

    @valid_register
    Esquema do Cenário: Fazer um cadastro válido na página de autenticação
        Quando o usúario cadastrar um e-mail válido
        E a página for redirecionada para YOUR PERSONAL INFORMATION
        E os dados forem preenchidos corretamente
        Então o usuário terá realizado o cadastro com sucesso "<sucesso>"
        
        Exemplos:

        |                                          sucesso                                                      |   
        |       Welcome to your account. Here you can manage all of your personal information and orders.       |  



    @invalid_register
    Esquema do Cenário: Fazer um cadastro inválido na página de autenticação
        Quando o usúario cadastrar um e-mail inválido
        Então haverá a mensagem do problema "<problem>"

        Exemplos:

        |                                          problem                                                                                  |   
        |       An account using this email address has already been registered. Please enter a valid password or request a new one.        |  

    
    @incorrect_register
    Esquema do Cenário: Fazer um cadastro incorreto na página de autenticação
        Quando o usúario cadastrar um e-mail válido
        E a página for redirecionada para YOUR PERSONAL INFORMATION
        E os dados não forem registrados corretamente
        Então haverá a mensagem do erro "<errors>"

        Exemplos:

        |            errors             |   
        |      There are 8 errors       |  