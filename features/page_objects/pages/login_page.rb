require_relative '../sections/header'
require_relative '../sections/register_sections'

module Pages
    class Login < SitePrism::Page
        set_url '?controller=authentication&back=my-account'

        section :register, Sections::Register, '[id="authentication"] [id="center_column"]'

        # login

        def login(email,senha)
            email_input.set email
            passw_input.set senha
            btn_login.click
        end
        
        element :error_message, '[class="alert alert-danger"] li'
        element :email_input, '[class="form-group"] #email'
        element :passw_input, '[class="form-group"] #passwd'
        element :btn_login, '[id="SubmitLogin"]'
        element :success_msg, '[class="info-account"]'

        
        element :email_register_input, '[id="email_create"]'
        element :btn_for_register, '[id="SubmitCreate"]'
        element :formulary, '[id="account-creation_form"]'
        element :btn_data_register, '[id="submitAccount"]'
        element :msg_no_register, '#center_column > div > p'
        element :invalid_register_msg, '[id="create_account_error"]'

    
        def register_data() #luiza
            register.first_name.set Factory::Dynamic.dynamic_data[:first_name]
            register.last_name.set Factory::Dynamic.dynamic_data[:last_name]
            register.email_register.set Factory::Dynamic.dynamic_data[:r_email]
            register.passw_register.set Factory::Dynamic.dynamic_data[:r_password]
            register.first_name_address.set Factory::Dynamic.dynamic_data[:first_name]
            register.last_name_address.set Factory::Dynamic.dynamic_data[:last_name]
            register.address_register.set Factory::Dynamic.dynamic_data[:address]
            register.city_address.set Factory::Dynamic.dynamic_data[:r_city]
            register.zip_code.set Factory::Dynamic.dynamic_data[:r_zip_code]
            register.mobile_phone.set Factory::Dynamic.dynamic_data[:r_mobile_phone]
            register.state[rand(1..50)].click
        end
        #

    end 

end