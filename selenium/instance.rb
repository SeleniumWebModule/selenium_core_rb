require "selenium-webdriver"

class SeleniumInstance
	def initialize(url, port, context)
		options =  Selenium::WebDriver::Chrome::Options.new
		options.add_option(:detach, true)
		@driver = Selenium::WebDriver.for(:chrome, options: options)
		openSession(url, port, context)
	end

	def openSession(url, port, context)
		@driver.navigate.to "http://#{url}:#{port}/#{context}"
		
	end

	attr_accessor :driver
end