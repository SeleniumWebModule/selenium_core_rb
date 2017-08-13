class SeleniumFindBy
	def initialize(identifyBy, value)
		@identifyBy = identifyBy
		@value = value
	end

	attr_accessor :identifyBy, :value 
end