require_relative 'keyboard/keypressevent'
require_relative '../model/findby'

module Event 
  class Keypress 
  	def initialize(component, rules)
  		@instance = KeypressEvent.new(component, rules)
  	end
  end  
end