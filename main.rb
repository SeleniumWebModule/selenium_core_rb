#require "selenium-webdriver"
require_relative 'event/event'
require_relative 'model/model'
require_relative 'model/identifyby'
require_relative 'rule/rule'
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

#btnAcesso = Model::Component.new('Acesso')

def login
	
	screenLogin = Model::Screen.new('Login').instance

	userFindBy = Model::FindBy.new(IdentifyBy::NAME, 'j_username').instance
	user = Model::Component.new('user').instance
	user.registerAttribute(Model::Attribute.new('findBy', userFindBy))
	user.registerAttribute(Model::Attribute.new('value', 'gleimar'))
	user.registerEvent(Event::Keypress::INSTANCE)
	screenLogin.registerComponent(user)

	passUserFindBy = Model::FindBy.new(IdentifyBy::NAME, 'j_password').instance
	passUser = Model::Component.new('password').instance
	passUser.registerAttribute(Model::Attribute.new('findBy', passUserFindBy))
	passUser.registerAttribute(Model::Attribute.new('value', 'gleimar'))
	passUser.registerEvent(Event::Keypress::INSTANCE)
	screenLogin.registerComponent(passUser)

	btnAcessoFindBy = Model::FindBy.new(IdentifyBy::TAG_NAME, 'input').instance
	btnAcesso = Model::Component.new('acesso').instance
	btnAcesso.registerAttribute(Model::Attribute.new('findBy', btnAcessoFindBy))
	btnAcesso.registerAttribute(Model::Attribute.new('value', 'Acesso'))
	btnAcesso.registerEvent(Event::MouseClick::INSTANCE)
	screenLogin.registerComponent(btnAcesso)

	return screenLogin
end

seleniumSystem = Model::System.new('189.3.216.130', '8080', 'ventaboletosadm').instance
seleniumSystem.registerScreen(login)
seleniumSystem.validate
seleniumSystem.mapMenu(Model::FindBy.new(IdentifyBy::CLASS_NAME, 'z-menubar-hor').instance);

