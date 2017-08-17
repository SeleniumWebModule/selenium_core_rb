require_relative '../selenium/selenium'

class SeleniumSystem
	def initialize(url, port, context)
		Selenium::Session.new(url, port, context)
		@screens = Array.new
		@rules = Array.new
	end

	def registerScreen(screen)
		@screens.push(screen)
	end

	def validate
		@screens.each{|screen| screen.validate}
	end

	attr_accessor :screens
end