require_relative '../default'
require_relative '../../selenium/selenium'

class KeypressEvent < Default
	def doAction(component, rules)
		attrFindBy = findAttribute(component.attributes, "findBy")
		element = Selenium::Event::INSTANCE.findElement(attrFindBy.value)

		attrValue = findAttribute(component.attributes, "value")
		element.send_keys attrValue.value
	end
end