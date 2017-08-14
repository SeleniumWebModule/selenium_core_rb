require "selenium-webdriver"

class Instance
	def initialize
		@driver = Selenium::WebDriver.for :chrome
		self.openSession
	end

	def self.openSession
		@driver.navigate.to "http://189.3.216.130:8080/ventaboletosadm"
	end

	attr_accessor :driver
end