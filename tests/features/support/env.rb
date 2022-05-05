#require 'capybara/cucumber'  para não resetar a sessão, tem que comentar esse require

require 'capybara'                  # usado para editar na pagina sem reseta o browser 
require 'capybara/dsl'              # usado para editar na pagina sem reseta o browser 
require 'capybara/rspec/matchers'   #usado para editar na pagina sem reseta o browser 
require 'selenium-webdriver'
require 'site_prism'


World(Capybara::DSL)                #usado para editar na pagina sem reseta o browser 
World(Capybara::RSpecMatchers)      #usado para editar na pagina sem reseta o browser 


Capybara.configure do |config|
    #selenium   selenium_chrome  selenium_chrome_healess
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5

end