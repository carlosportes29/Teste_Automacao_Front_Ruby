Dado("que esteja na página de login") do
    @login_page.load
    sleep(5)
end

Quando("eu faço login com {string} e {string}") do |email, senha|
    @login_page.informacao(email, senha)
end

Então("validar a {string} de alerta") do |msg|     
    assert_selector('ok', text: msg, visible: true)
 end

 Então("validar a {string}") do |msg|
    expect(@login_page).to have_css('.page-heading', text: msg)  

    page.driver.quit

  end

 

 