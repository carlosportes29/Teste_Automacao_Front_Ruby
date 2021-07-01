module Pages
    class CarrinhoPage < SitePrism::Page
      set_url '/index.php?controller=cart"'
  
      element  :btn_carrinho, '#add_to_cart'  
      element :product, '.product-name'
      element :btn_checkout, '.btn btn-default button button-medium'
         
  
      def carrinho(produto)        
        assert_selector('.product-name',text: produto, visible: true)       
        all('.product-name')[0].click       
        btn_carrinho.click      
        click_link_or_button 'Proceed to checkout'   
      end    

    end
  end
  

