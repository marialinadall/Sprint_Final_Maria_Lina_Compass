Dado('que esteja na página do login') do
    @login_page = Pages::Login.new
    @login_page.load
end
  
Quando('o usúario tentar login com {string} ou {string} inválidos') do |email, senha|
    @login_page.login(email, senha)
end
  
Então('deverá ser exibida a {string}') do |msg|
    expect(@login_page.error_message.text).to eql msg
end
  
Quando('o usúario tentar login com {string} ou {string} válidos') do |email, senha|
    @login_page.login(email, senha)
end
  
Então('deverá ser direcionado a página My Account com a {string} de boas vindas') do |msg|
    expect(@login_page.success_msg.text).to eql msg
end