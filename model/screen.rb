require_relative 'default' 

class SeleniumScreen < Default

	def initialize(name, attribute)
		@name = name
		@attribute = attribute
		@components = Array.new
	end

	def registerComponent(component)
		@components.push(component)
	end

	attr_accessor :components, :attribute
end