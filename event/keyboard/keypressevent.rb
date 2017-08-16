require_relative '../../selenium/selenium'

class KeypressEvent
	def doAction(component, rules)
		element = Selenium::Event::INSTANCE.findElement(component.attribute)
		element.send_keys component.attribute.value
	end
end