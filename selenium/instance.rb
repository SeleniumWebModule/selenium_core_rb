require "selenium-webdriver"

class SeleniumInstance
	def initialize(url, port, context)
		@driver = Selenium::WebDriver.for :chrome
		openSession(url, port, context)
	end

	def openSession(url, port, context)
		@driver.navigate.to "http://#{url}:#{port}/#{context}"
		@driver.manage.timeouts.page_load = 3000
	end

	attr_accessor :driver
end