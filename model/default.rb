require_relative 'attribute'
require_relative '../selenium/selenium'

class Default
	def initialize(name)
		@name = name
		@attributes = Array.new
		@me = Selenium
	end

	def registerAttribute(attribute)
		@attributes.push(attribute)
	end

	def associateParent(parent)
		@parent = parent
	end

	def associateChilds()
		@childs = Array.new
	end 

	attr_accessor :attributes, :name, :parent, :childs
end