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

system = Model::System.new('189.3.216.130', '8080', 'ventaboletosadm')
screenLogin = Model::Screen.new('Login')

userFindBy = Model::FindBy.new(Identify::NAME, 'j_username')
attrUser = Model::Attribute.new('value','gleimar', userFindBy)
user = Model::Component.new('user', attrUser)
user.registerEvent(Event::Keypress.new(user, Array.new))

#btnAcesso = Model::Component.new('Acesso')

