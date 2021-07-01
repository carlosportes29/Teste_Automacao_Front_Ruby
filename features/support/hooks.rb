Before do
  #puts 'Aqui executa antes!'
  @home_page = Pages::HomePage.new
  @search_page = Pages::SearchPage.new
  @login_page = Pages::LoginPage.new
  @carrinho_page = Pages::CarrinhoPage.new

  Capybara.current_session.driver.browser.manage.delete_all_cookies #impar o cache antes de iniciar o chrome
    Capybara.page.driver.browser.manage.window.maximize #maximizar a tela após o open chrome
end

AfterStep do
  screenshot = "reports/screenshot#{Time.now.to_i.to_s}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'the_screenshot')
end

