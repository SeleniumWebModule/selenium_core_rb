#require "selenium-webdriver"
#require_relative 'event/event'
require_relative 'model/model'
require_relative 'model/view'

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

view = Model::View::INSTANCE
puts view.findBy

#puts Event::Keyboard::FIND.by('id')

