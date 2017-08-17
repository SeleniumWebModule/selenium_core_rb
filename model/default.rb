require_relative 'attribute'
require_relative '../selenium/selenium'

class Default
	def associateParent(parent)
		@parent = parent
	end

	def associateChilds()
		@childs = Array.new
	end 

	def registerEvent(event)
		@event = event
	end

	def registerAttribute(attribute)
		@attributes.push(attribute.instance)
	end

	def registerRule(rule)
		@rules.push(rule)
	end

	attr_accessor :event, :parent, :childs
end