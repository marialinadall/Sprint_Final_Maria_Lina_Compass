Dado('que esteja na Home') do
    @home_page = Pages::Home.new
    @home_page.load
end
  
Quando('o usúario buscar um produto na barra de pesquisa') do
    @home_page.search_for('DRESSES')
    @search_results_page = Pages::SearchResults.new
end
  
Então('deverá ser exibido resultados da busca') do
    expect(@search_results_page).to have_products 
end

Quando('o usúario buscar por {string} na barra de pesquisa') do |products|
    @home_page.search_for(products)
    @search_results_page = Pages::SearchResults.new
end
