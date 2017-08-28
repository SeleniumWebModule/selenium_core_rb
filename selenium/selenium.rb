require_relative 'instance'
require_relative 'event'
require_relative 'element'

module Selenium
	class Session
		def initialize(url, port, context)
			$seleniumInstance = SeleniumInstance.new(url, port, context)
		end
	end

	class Event
		INSTANCE = SeleniumEvent.new
	end

	class Element
		def initialize(element)
			@instance = SeleniumElement.new(element)
		end
		
		attr_accessor :instance
	end
end