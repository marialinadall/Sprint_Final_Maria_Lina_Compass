module Sections
    class Register < SitePrism::Section
        element :btn_gender, '[id="id_gender2"]'
        element :first_name, '[id="customer_firstname"]'
        element :last_name, '[id="customer_lastname"]'
        element :email_register, '[id="email"]'
        element :passw_register, '[id="passwd"]'
        element :first_name_address, '[id="firstname"]'
        element :last_name_address, '[id="lastname"]'
        element :address_register, '[id="address1"]'
        element :city_address, '[id="city"]'
        element :zip_code, '[id="postcode"]'
        element :mobile_phone, '[id="phone_mobile"]'
        elements :state, '[id="uniform-id_state"] [value]'
    end
end