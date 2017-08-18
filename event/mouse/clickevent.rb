require_relative '../default'

class OnClickEvent < Default
	def doAction(component, rules)
		attrFindBy = findAttribute(component.attributes, "findBy")
		attrGetValueBy = identifyAttrByGetValueBy(component.attributes)
		attrValue = findAttribute(component.attributes, attrGetValueBy.value)

		element = getSeleniumEvent.findElements(attrFindBy.value, attrValue.id, attrValue.value)

		registerEvidence("#{component.name}-beforeevent")		

		element.click()
		
		registerEvidence("#{component.name}-afterevent")
	end
end