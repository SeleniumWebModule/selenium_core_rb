require_relative '../selenium/selenium'

class SeleniumSystem
	def initialize(url, port, context)
		@selenium = Selenium::InitSession.new(url, port, context).instance
		@screens = Array.new
	end

	def registerScreen(screen)
		@screens.push(screen)
	end

	def validate
		
	end

	attr_accessor :screens
end