require_relative 'default'

class KeyboardEvent < Default
	def findBy
		puts super.find
	end
end