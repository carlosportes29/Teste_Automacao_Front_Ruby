module Pages
  class LoginPage < SitePrism::Page
   
    set_url '/index.php?controller=authentication&back=my-account'

    element  :breadcrumb, ''
    element  :input_create_account_email, ''
    element  :btn_create_an_account, ''
    element  :input_login_email, '#email'
    element  :input_login_password, '#passwd' #id
    element  :link_forgot_password, ''
    element  :btn_sign_in, '#SubmitLogin'
    element  :alert_message_authentication_failed, ''
    element  :my_account, '.page-heading' #class
    

    def informacao(email,senha)
      input_login_email.set(email)
      input_login_password.set(senha)
      btn_sign_in.click
    end 
  end  
end
