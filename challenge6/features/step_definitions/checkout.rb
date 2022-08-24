Dado('que o usuário adicionou um produto no carrinho') do
    @payment_page = Pages::Payment.new
    @payment_page.load
    @payment_page.btn_add_cart_pdp.click
    @payment_page.btn_checkout_pdp.click
    @payment_page.checkout_cart.click
end
  
Quando('logar com {string} e {string} válidos') do |email, senha|
    @payment_page.login(email, senha)
end
  
Quando('escolher um endereço para entrega') do
    @payment_page.checkout_address.click
end
  
Quando('escolher o tipo de entrega') do
    @payment_page.btn_shipping.click
    @payment_page.checkout_shipping.click
end
  
Quando('selecionar a forma de pagamento via transferência {string}') do |via_bank|
    @payment_page.pay_by_bank.click
end

Quando('selecionar a forma de pagamento via cheque {string}') do |via_check|
    @payment_page.pay_by_check.click
end

Então('o usuário clicará em I confirm my order e realizará a compra') do
    @payment_page.confirm_payment.click
end
