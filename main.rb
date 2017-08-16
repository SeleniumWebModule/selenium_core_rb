#require "selenium-webdriver"
require_relative 'event/event'
require_relative 'model/model'
require_relative 'model/identifyby'
#require_relative 'model/view'


#driver = Selenium::WebDriver.for :chrome
#driver.navigate.to "http://189.3.216.130:8080/ventaboletosadm"

#element = driver.find_element(name: 'j_username')
#element.send_keys ""

#element = driver.find_element(name: 'j_password')
#element.send_keys ""

#element.submit

#puts driver.title

#driver.quit

#event = Event::Keyboard::INSTANCE
#puts event

#attribute = Model::Attribute.new.INSTANCE('name', 'Login', FindBy.new)
#view = Model::View::INSTANCE
#view.registerAttribute(attribute)

#puts IdentifyBy::CLASS_NAME

#attribute = Model::View::INSTANCE()
#puts attribute

#puts Event::Keyboard::FIND.by('id')

seleniumSystem = Model::System.new('127.0.0.1', '8080', 'ventaboletosadm').instance
screenLogin = Model::Screen.new('Login', Array.new).instance

userFindBy = Model::FindBy.new(IdentifyBy::NAME, 'j_username').instance
attrUser = Model::Attribute.new('value','gleimar', userFindBy).instance
user = Model::Component.new('user', attrUser).instance
user.registerEvent(Event::Keypress::INSTANCE)

screenLogin.registerComponent(user)
seleniumSystem.registerScreen(screenLogin)

seleniumSystem.validate

#btnAcesso = Model::Component.new('Acesso')

