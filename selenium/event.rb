require "selenium-webdriver"
require_relative "instance"
 
class SeleniumEvent
	def findElement(findBy)
		return $seleniumInstance.driver.find_element("#{findBy.identifyBy}": "#{findBy.value}")
	end

	def findElements(findBy, id, value)
		elements = $seleniumInstance.driver.find_elements("#{findBy.identifyBy}": "#{findBy.value}")
		
		for element in elements
			if element.attribute("#{id}") == value
				return element
				break
			end
		end
	end
end