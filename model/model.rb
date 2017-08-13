require_relative 'view.rb'
require_relative 'attribute.rb'

module Model
	class View 
		INSTANCE = SeleniumView.new
	end

	class FindBy
		def INSTANCE(identifyBy, value)
			return SeleniumFindBy.new(identifyBy, value)
		end 
	end

	class Attribute
		def INSTANCE(id, value, findBy)
			return SeleniumAttribute.new(id, value, findBy)
		end
	end
end