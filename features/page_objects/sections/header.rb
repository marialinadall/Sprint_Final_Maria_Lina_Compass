module Sections
    class Header < SitePrism::Section
        element :search_input, '[name="search_query"]'
        element :btn_home_search, '[name="submit_search"]'

        def click_and_input_for_search(text)
            search_input.set text 
            btn_home_search.click
        end
    end
end