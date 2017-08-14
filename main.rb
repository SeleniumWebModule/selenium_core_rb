#require "selenium-webdriver"
#require_relative 'event/event'
require_relative 'model/model'
#require_relative 'model/view'
require_relative 'model/findby'
require_relative 'model/identifyby'
require_relative 'selenium/selenium'

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

Selenium::INSTANCE

