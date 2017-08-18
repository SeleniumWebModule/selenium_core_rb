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

	def getSeleniumEvent
		return Selenium::Event::INSTANCE
	end

	def registerEvidence(name)
		getSeleniumEvent.saveScreenshot(name)
	end
end