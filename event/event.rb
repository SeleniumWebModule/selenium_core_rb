require_relative 'keyboard/keypressevent'
require_relative '../model/findby'

module Event 
  class Keypress 
  	INSTANCE = KeypressEvent.new
  end  
end