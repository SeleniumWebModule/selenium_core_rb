require "selenium-webdriver"

class SeleniumInstance
	def initialize(url, port, context)
		#options =  Selenium::WebDriver::Chrome::Options.new
 		#options.add_option(:detach, true)
 		#@driver = Selenium::WebDriver.for(:chrome, options: options)
		@driver = Selenium::WebDriver.for(:chrome)
		openSession(url, port, context)
	end

	def openSession(url, port, context)
		@driver.navigate.to "http://#{url}:#{port}/#{context}"	
		@driver.manage.window.maximize
	end

	attr_accessor :driver
end