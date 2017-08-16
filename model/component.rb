require_relative 'default' 

class SeleniumComponent < Default
	def initialize(name, attribute)
		@name = name
		@attribute = attribute
	end

	attr_accessor :name, :attribute
end