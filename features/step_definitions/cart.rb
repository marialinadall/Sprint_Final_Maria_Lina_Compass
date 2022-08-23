Dado('que escolha-se um produto para estar na página do carrinho') do
    @product_page = Pages::PDP.new
    @product_page.load
    @product_page.btn_add_cart_pdp.click
end
  
Quando('excluir um produto do carrinho') do
    @product_page.btn_checkout_cart.click
    @product_page.btn_delete_cart.click
end
  
Então('o produto deverá desaparecer da página do carrinho') do
    @product_page.wait_until_emptycart_msg_visible(wait: 5)
end


