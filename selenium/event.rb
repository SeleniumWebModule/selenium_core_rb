require "selenium-webdriver"

require_relative "instance"
require_relative "../model/identifyby"
 
class SeleniumEvent
	def findElement(findBy)
		return $seleniumInstance.driver.find_element("#{findBy.identifyBy}": "#{findBy.value}")
	end

	def findElements(findBy, id, value)
		elements = $seleniumInstance.driver.find_elements("#{findBy.identifyBy}": "#{findBy.value}")
		
		for element in elements
			if element.attribute("#{id}") == value
				return element
			end
		end
	end

	def findChildsByChilds(element, childs, lookingFor)
		elements = element.find_elements(:xpath, "./child::*")

		for element in elements
			for lookingForAttr in lookingFor
				if element.attribute("#{lookingForAttr}")
					childs.push(element)
				end
			end

			return findChildsByChilds(element, childs, lookingFor)
		end

		return childs
	end

	def findChilds(findBy, lookingFor)
		parent = findElement(findBy)
		elements = parent.find_elements(:xpath, "./child::*")

		childs = Array.new

		for element in elements
			for lookingForAttr in lookingFor
				if element.attribute("#{lookingForAttr}")
					childs.push(element)
				end
			end

			return findChildsByChilds(element, childs, lookingFor)
		end

		return childs
	end
end