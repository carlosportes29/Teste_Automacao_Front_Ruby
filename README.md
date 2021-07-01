
******
Instalar Visual Studio 
Passo a passo na instalação ruby

ruby -v 
gem install bundler
bundle init ==> cria o Gemfile
cucumber -- init (irá criar arquivos features/step_definitions
					features/support
					features/support/env.rb)
          
LEMBRANDO QUE A VERSAO RUBY UTILIZADA É: ruby 2.7.3p183 (2021-04-05 revision 6847ee089d) [x64-mingw32]

Chromedriver.exe utilizado =>  ChromeDriver 91.0.4472.101
o mesmo padrao do chrome executor.
	
https://rubyinstaller.org/downloads/


source 'https://rubygems.org/'

gem 'selenium-webdriver'
gem 'capybara'
gem 'site_prism'
gem 'cucumber', '~> 3.1.2'
gem 'ffi'
gem 'rspec'
gem 'pry', '0.11.3'
gem 'ruby'

Criado o script-condicao sobre realizar a limpeza cache antes de iniciar o chrome driver e a maximizar a tela 100% nos testes automatizados

*************************
Sobre os testes:

Foi criado/alterado os cenários-features:

Login (sucesso)
Login (falha usando a metodologia Gherkin)
Carrinho (sucesso)
Buscar (sucesso e falha)

Sections, spec, step definitions, env.rb e reports alterados no github


