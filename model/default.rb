require_relative 'attribute'
require_relative '../selenium/selenium'

class Default
	def initialize(name, attribute)
		@name = name
		#@attributes = Array.new
	end

	#def registerAttribute(attribute)
	#	@attributes.push(attribute)
	#end

	def associateParent(parent)
		@parent = parent
	end

	def associateChilds()
		@childs = Array.new
	end 

	def registerEvent(event)
		@event = event
	end

	attr_accessor :attribute, :name, :event, :parent, :childs
end