require_relative 'default' 

class SeleniumScreen < Default

	def initialize(name)
		@name = name
		@attributes = Array.new
		@components = Array.new
		@elements = Array.new
	end

	def registerComponent(component)
		@components.push(component)
	end

	def validate
		@components.each{|component| component.validate}
	end

	attr_accessor :components, :attribute
end