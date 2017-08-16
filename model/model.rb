require_relative 'system'
require_relative 'screen'
require_relative 'attribute'
require_relative 'findby'
require_relative 'component'

module Model
	class System
		def initialize(url, port, context)
			@instance = SeleniumSystem.new(url, port, context)
		end

		attr_accessor :instance
	end

	class Screen
		def initialize(name, attribute)
			@instance = SeleniumScreen.new(name, attribute)
		end
		
		attr_accessor :instance
	end

	class Component
		def initialize(name, attribute)
			@instance = SeleniumComponent.new(name, attribute)
		end

		attr_accessor :instance
	end

	class Attribute
		def initialize(id, value, findBy)
			@instance = SeleniumAttribute.new(id, value, findBy)
		end

		attr_accessor :instance
	end

	class FindBy
		def initialize(identifyBy, value)
			@instance = SeleniumFindBy.new(identifyBy, value)
		end 

		attr_accessor :instance
	end
end