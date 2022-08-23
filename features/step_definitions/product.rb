Dado('que esteja na página do produto') do
    @product_page = Pages::PDP.new
    @product_page.load
end
  
Quando('alterar a quantidade de um produto na PDP') do
    @product_page.btn_quantity_product.click
    sleep(4)
end
  
Então('deverá ser exibido a quantidade alterada do produto') do
    expect(@product_page.new_quantity['src']).not_to eql [:btn_quantity_product]
end

Quando('trocar a cor do produto na PDP') do
    @first_image = @product_page.mainimage['src']
    @product_page.colors[0].click
end
  
Então('a imagem do produto deverá ser alterada') do
    expect(@product_page.mainimage['src']).not_to eql @first_image
    sleep(2)
end

Quando('adicionar um produto ao carrinho') do 
    @product_page.btn_add_cart_pdp.click
end
  
Então('deverá ser adicionado com sucesso {string}') do |msg|
    expect(@product_page.msg_sucess_cart.text).to eql msg
end
  