module Pages
    class Payment < SitePrism::Page
        set_url('http://automationpractice.com/index.php?id_product=2&controller=product')

        element :email_input, '[class="form-group"] #email'
        element :passw_input, '[class="form-group"] #passwd'
        element :btn_login, '[id="SubmitLogin"]'
        element :btn_add_cart_pdp, '[id="add_to_cart"]'
        element :btn_checkout_pdp, '[class="btn btn-default button button-medium"]'
        element :checkout_cart, '[class="button btn btn-default standard-checkout button-medium"]'
        element :checkout_address, '[class="button btn btn-default button-medium"]'
        element :btn_shipping, '[class="checker"]'
        element :checkout_shipping, '[class="button btn btn-default standard-checkout button-medium"]'
        element :pay_by_bank, '[class="bankwire"]'
        element :pay_by_check, '[class="cheque"]'
        element :confirm_payment, '[class="button btn btn-default button-medium"]'

        def login(email,senha)
            email_input.set email
            passw_input.set senha
            btn_login.click
         end
    end
end
