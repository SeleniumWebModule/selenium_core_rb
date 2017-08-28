require_relative '../model/findby'
require_relative '../selenium/selenium'

class Default 
	def findAttribute(attributes, key)
		for attribute in attributes
			 return attribute if attribute.id == key
		end

		return nil
	end

	def identifyAttrByGetValueBy(attributes)
		for attribute in attributes
			next if attribute.id != "getValueBy"
			return attribute
		end

		return nil
	end

	def getScreenElement(component)
		findScreenBy = findAttribute(component.attributes, "findScreenBy")
		findTitleScreenBy = findAttribute(component.attributes, "findTitleScreenBy")
		screenID = findAttribute(component.attributes, "screenID")
		screenValue = findAttribute(component.attributes, "screenValue")

		screen = getSeleniumEvent.findElement(findScreenBy.value)
		element = Selenium::Element.new(screen).instance

		identifyChilds(element)

		getChilds(element)
		#identifyChilds(screen.find_elements(:xpath, "./child::*"))

		return getSeleniumEvent.findElement(findScreenBy.value);

		#return getSeleniumEvent.findElements(findScreenBy.value, screenID.value, screenValue.value) 
	end

	def getElement(component)
		attrFindBy = findAttribute(component.attributes, "findBy")
		return getSeleniumEvent.findElement(attrFindBy.value)
	end

	def getSeleniumEvent
		return Selenium::Event::INSTANCE
	end

	def registerEvidence(name)
		getSeleniumEvent.saveScreenshot(name)
	end

	def identifyChilds(element)
		childs = element.ref.find_elements(:xpath, "./child::*")
		
		for child in childs
			childElement = Selenium::Element.new(child).instance

			puts child.tag_name.length

			if ['input', 'button', 'label', 'span'].include? child.tag_name 
				element.registerChild(childElement)
			end
			
			identifyChilds(childElement)
		end
	end

	def getChilds(element)
		for elementP in element.children
			puts elementP.tag_name

			getChilds(elementP)
		end
	end
end