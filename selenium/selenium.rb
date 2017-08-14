require_relative 'instance'

module Selenium
	class Session
		INSTANCE = Instance.new
	end

	class Event
		INSTANCE = Event.new
	end
end