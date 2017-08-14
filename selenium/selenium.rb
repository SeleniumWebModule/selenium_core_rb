require_relative 'instance'

module Selenium
	class InitSession
		def initialize(url, port, context)
			@instance = Instance.new(url, port, context)
		end

		attr_accessor :instance
	end

	class Event
		INSTANCE = Event.new
	end

	attr_accessor :instance
end