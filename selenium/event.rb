require "selenium-webdriver"
require_relative "instance"
 
class SeleniumEvent
	def findElement(attribute)
		return driver.find_element("#{attribute.findby.identifyBy}": 'j_username')
	end
end