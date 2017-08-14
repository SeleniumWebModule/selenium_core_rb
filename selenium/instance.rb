require "selenium-webdriver"

class Instance
	def initialize(url, port, context)
		@driver = Selenium::WebDriver.for :chrome
		openSession(url, port, context)
	end

	def openSession(url, port, context)
		@driver.navigate.to "http://#{url}:#{port}/context"
	end
end