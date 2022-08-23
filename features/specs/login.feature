#language: pt

@regression
@login

Funcionalidade: Login
Como usuário do e-commerce Your Logo
Quero poder fazer o login no site
Para realizar compras

    Contexto:
        Dado que esteja na página do login

    @invalid_login
    Esquema do Cenário: Login Inválido
        Quando o usúario tentar login com "<email>" ou "<senha>" inválidos
        Então deverá ser exibida a "<msg>"

    Exemplos:

    |           email          |    senha    |               msg             |
    |                          |   123456    |  An email address required.   |
    |    teste123@gmail.com    |             |  Password is required.        |
    |    teste123@gmail.com    |   ABCDEF    |  Authentication failed.       |

    @valid_login
    Esquema do Cenário: Login Válido
        Quando o usúario tentar login com "<email>" ou "<senha>" válidos
        Então deverá ser direcionado a página My Account com a "<msg>" de boas vindas

        Exemplos:

    |           email          |    senha    |                                          msg                                                 |
    |    teste123@gmail.com    |   123456    |  Welcome to your account. Here you can manage all of your personal information and orders.   |
  

