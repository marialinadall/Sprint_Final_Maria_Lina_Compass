require_relative '../sections/header'
require_relative '../sections/product'

module Pages
    class Home < SitePrism::Page 
        set_url('/')
        section :header, Sections::Header, 'header'

        def search_for (product)
            header.click_and_input_for_search(product)
        end
    end
end