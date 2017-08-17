require_relative '../selenium/selenium'
require_relative 'default'

class SeleniumSystem < Default
	def initialize(url, port, context)
		Selenium::Session.new(url, port, context)
		@screens = Array.new
		@rules = Array.new
		@childs = Array.new
	end

	def registerScreen(screen)
		@screens.push(screen)
	end

	def validate
		@screens.each{|screen| screen.validate}
	end

	def mapMenu(findBy)
		lookingFor = Array.new
		lookingFor.push(Model::FindBy.new(IdentifyBy::TAG_NAME, 'button').instance)
		
		associateChilds(Selenium::Event::INSTANCE.findChilds(findBy, lookingFor))
	end

	attr_accessor :screens
end