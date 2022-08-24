Dado('que esteja na página de Authentication do e-commerce em questão') do
    @register_page = Pages::Login.new
    @register_page.load
end
  
Quando('o usúario cadastrar um e-mail válido') do
    @register_page.email_register_input.set Factory::Dynamic.dynamic_data[:r_email]
    @register_page.btn_for_register.click
end
  
Quando('a página for redirecionada para YOUR PERSONAL INFORMATION') do
    @register_page.wait_until_formulary_visible
end
  
Quando('os dados forem preenchidos corretamente') do
    @register_page.register_data
    @register_page.btn_data_register.click
end
  
Então('o usuário terá realizado o cadastro com sucesso {string}') do |sucesso|
    expect(@register_page.success_msg.text).to eql sucesso
end
  
Quando('o usúario cadastrar um e-mail inválido') do
    @register_page.email_register_input.set 'teste123@gmail.com'
    @register_page.btn_for_register.click
end
  
Então('haverá a mensagem do problema {string}') do |problem|
    expect(@register_page.invalid_register_msg.text).to eql problem
end
  
Quando('os dados não forem registrados corretamente') do
    @register_page.btn_data_register.click
end

Então('haverá a mensagem do erro {string}') do |errors|
    expect(@register_page.msg_no_register.text).to eql errors
end