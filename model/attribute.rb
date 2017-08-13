class SeleniumAttribute 
	def initialize(id, value, findBy)
		@id = id
		@value = value
		@findBy = findBy
	end

	attr_accessor :id, :value, :findBy
end