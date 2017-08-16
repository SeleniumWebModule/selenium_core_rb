require_relative 'instance'
require_relative 'event'

module Selenium
	class InitSession
		def initialize(url, port, context)
			@instance = SeleniumInstance.new(url, port, context)
		end

		attr_accessor :instance
	end

	class Event
		INSTANCE = SeleniumEvent.new
	end
end