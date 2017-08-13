require_relative 'attribute'

class Default
	def initialize
		@attributes = Array.new
	end

	def registerAttribute(attribute)
		@attributes.push(attribute)
	end

	attr_accessor :attributes
end