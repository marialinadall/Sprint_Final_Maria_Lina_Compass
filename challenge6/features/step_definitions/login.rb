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

Quando('o usuário clicar no botão Forgot your password?') do
    @login_page.btn_forgot_passw.click 
end
  
Quando('for redirecionado a página de Forgot Your Password') do
end
  
Quando('tentar recuperar a senha com {string}') do |email|
    @login_page.recover_passw(email)
end
  
Então('visualizará a {string}') do |msg|
    expect(@login_page.invalid_recovery_msg).to have_content msg
end
  
Então('visualizará a {string} comprovando sucesso') do |msg|
    expect(@login_page.valid_recovery_msg).to have_content msg
end