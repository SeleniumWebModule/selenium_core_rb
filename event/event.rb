require_relative 'keyboard/keypressevent'
require_relative 'mouse/clickevent'
require_relative '../model/findby'

module Event 
  class Keypress 
  	INSTANCE = KeypressEvent.new
  end  

  class MouseClick
  	INSTANCE = OnClickEvent.new
  end
end