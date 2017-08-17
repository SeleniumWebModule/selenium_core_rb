require_relative '../default'
require_relative '../../selenium/selenium'

class OnClickEvent < Default
	def doAction(component, rules)
		attrFindBy = findAttribute(component.attributes, "findBy")
		attrGetValueBy = identifyAttrByGetValueBy(component.attributes)
		attrValue = findAttribute(component.attributes, attrGetValueBy.value)

		element = Selenium::Event::INSTANCE.findElements(attrFindBy.value, attrValue.id, attrValue.value)

		element.click()
	end
end