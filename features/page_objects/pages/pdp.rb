module Pages
    class PDP < SitePrism::Page
        set_url('http://automationpractice.com/index.php?id_product=2&controller=product')

        elements :colors, 'ul#color_to_pick_list>li'
        element :mainimage, "#bigpic"

        element :btn_add_cart_pdp, '[id="add_to_cart"]'
        element :btn_delete_cart, '[class="icon-trash"]'
        element :btn_checkout_cart, '[class="btn btn-default button button-medium"]'
        element :emptycart_msg, '[class="alert alert-warning"]'
        element :btn_quantity_product, '[class="icon-plus"]'
        element :new_quantity, '[id="quantity_wanted"]'
        element :msg_sucess_cart, '[class="layer_cart_product col-xs-12 col-md-6"] h2'

    end
end