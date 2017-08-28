require_relative '../default'
require_relative '../../selenium/selenium'

class KeypressEvent < Default
	def doAction(component, rules)
		findSiblingBy = findAttribute(component.attributes, "findSiblingBy")

		element = findSiblingBy != nil ? doActionBySibling(component) : getElement(component)

		return if findSiblingBy != nil	

		attrValue = findAttribute(component.attributes, "value")

		registerEvidence("#{component.name}-beforeevent")	
		
		element.send_keys attrValue.value

		registerEvidence("#{component.name}-afterevent")	
	end

	def doActionBySibling(component)
		screenElement = getScreenElement(component);
		
		#puts screenElement.find_elements(:xpath, "./child::*").length
		
	end
end