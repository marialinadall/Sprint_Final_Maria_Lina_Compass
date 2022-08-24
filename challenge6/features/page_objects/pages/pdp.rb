module Pages
    class PDP < SitePrism::Page
        set_url('http://automationpractice.com/index.php?id_product=2&controller=product')

        #cor
        elements :colors, 'ul#color_to_pick_list>li'
        element :mainimage, "#bigpic"

        #tamanho
        element :btn_size, 'div.selector'
        elements :dif_size_options, '#group_1 [value]'
        element :chosen_size, 'div .selector [style]'

        #carrinho
        element :btn_add_cart_pdp, '[id="add_to_cart"]'
        element :btn_delete_cart, '[class="icon-trash"]'
        element :btn_checkout_cart, '[class="btn btn-default button button-medium"]'
        element :emptycart_msg, '[class="alert alert-warning"]'
        element :btn_quantity_product, '[class="icon-plus"]'
        element :new_quantity, '[id="quantity_wanted"]'
        element :msg_sucess_cart, '[class="layer_cart_product col-xs-12 col-md-6"] h2'

        def dif_size(index)
            btn_size.click
            dif_size_options[index].click
        end
    end
end