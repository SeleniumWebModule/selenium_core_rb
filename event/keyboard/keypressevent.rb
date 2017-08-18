require_relative '../default'
require_relative '../../selenium/selenium'

class KeypressEvent < Default
	def doAction(component, rules)
		attrFindBy = findAttribute(component.attributes, "findBy")
		element = getSeleniumEvent.findElement(attrFindBy.value)

		attrValue = findAttribute(component.attributes, "value")

		registerEvidence("#{component.name}-beforeevent")	
		
		element.send_keys attrValue.value

		registerEvidence("#{component.name}-afterevent")	
	end
end