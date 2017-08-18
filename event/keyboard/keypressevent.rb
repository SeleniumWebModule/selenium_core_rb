require_relative '../default'
require_relative '../../selenium/selenium'

class KeypressEvent < Default
	def doAction(component, rules)
		findParentBy = findAttribute(component.attributes, "findParentBy")

		element = findParentBy != nil ? getElementByParent(component, findParentBy) :
			 getElementWithoutParent(component)

		attrValue = findAttribute(component.attributes, "value")

		registerEvidence("#{component.name}-beforeevent")	
		
		element.send_keys attrValue.value

		registerEvidence("#{component.name}-afterevent")	
	end

	def getElementByParent(component, findParentBy)
		attrFindBy = findAttribute(component.attributes, "findBy")
		parentID = findAttribute(component.attributes, "findBy")
		parentValue = findAttribute(component.attributes, "findBy")
		return getSeleniumEvent.findElements(attrFindBy.value, parentID.value, parentValue.value)
	end

	def getElementWithoutParent(component)
		attrFindBy = findAttribute(component.attributes, "findBy")
		return getSeleniumEvent.findElement(attrFindBy.value)
	end
end