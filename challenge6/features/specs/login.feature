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
  
    @recuperacao_senha_invalida
    Esquema do Cenário: Recuperação de senha sem sucesso
        Quando o usuário clicar no botão Forgot your password?
        E for redirecionado a página de Forgot Your Password
        E tentar recuperar a senha com "<email>" 
        Então visualizará a "<msg>"

    Exemplos:

    
    |           email          |                         msg                                  |
    |                          |  Invalid email address.                                      |
    |    teste123              |  Invalid email address.                                      |
    |    teste123@oi.com       |  There is no account registered for this email address.      |

    @recuperacao_senha_valida 
    Esquema do Cenário: Recuperação de senha com sucesso
        Quando o usuário clicar no botão Forgot your password?
        E for redirecionado a página de Forgot Your Password
        E tentar recuperar a senha com "<email>" 
        Então visualizará a "<msg>" comprovando sucesso 

    Exemplos:

    
    |           email          |                                   msg                                    |
    |    teste123@gmail.com    |  A confirmation email has been sent to your address: teste123@gmail.com  |
