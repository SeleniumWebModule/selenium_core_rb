require_relative 'instance'
require_relative 'event'

module Selenium
	class Session
		def initialize(url, port, context)
			$seleniumInstance = SeleniumInstance.new(url, port, context)
		end
	end

	class Event
		INSTANCE = SeleniumEvent.new
	end
end