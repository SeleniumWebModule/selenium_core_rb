require "selenium-webdriver"

require_relative "instance"
require_relative "../model/identifyby"
require_relative "../model/getvalueby"
 
class SeleniumEvent
	def findElement(findBy)
		return $seleniumInstance.driver.find_element("#{findBy.identifyBy}": "#{findBy.value}")
	end

	def findElements(findBy, id, value)
		elements = $seleniumInstance.driver.find_elements("#{findBy.identifyBy}": "#{findBy.value}")

		for element in elements
			case id
				when GetValueBy::TAG_NAME
					if element.tag_name == value
						return element
					end
				when GetValueBy::TEXT
					if element.text.strip == value
						return element
					end
				else
					puts id
					if element.attribute("#{id}") == value
						return element
					end
				end
		end
	end

	def findChildsByChild(element, childs, lookingFor)
		elements = element.find_elements(:xpath, "./child::*")

		for element in elements
			for lookingForItem in lookingFor
				case lookingForItem.identifyBy
					when GetValueBy::TAG_NAME
						if element.tag_name == lookingForItem.value
							childs.push(element)		
						end
					else
						if element.attribute("#{lookingForItem.identifyBy}") == lookingForItem.value
							childs.push(element)		
						end
					end
			end

			findChildsByChild(element, childs, lookingFor)
		end

		return childs
	end

	def findChilds(findBy, lookingFor)
		parent = findElement(findBy)
		elements = parent.find_elements(:xpath, "./child::*")

		childs = Array.new

		for element in elements
			for lookingForItem in lookingFor
				case lookingForItem.identifyBy
					when GetValueBy::TAG_NAME
						if element.tag_name == lookingForItem.value
							childs.push(element)		
						end
					else
						if element.attribute("#{lookingForItem.identifyBy}") == lookingForItem.value
							childs.push(element)		
						end
					end
			end

			findChildsByChild(element, childs, lookingFor)
		end

		return childs
	end
end