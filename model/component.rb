require_relative 'default' 

class SeleniumComponent < Default
	def initialize(name)
		@name = name
		@attributes = Array.new
		@rules = Array.new
	end

	def validate
		self.event.doAction(self, @rules)
	end

	attr_accessor :name, :attributes
end