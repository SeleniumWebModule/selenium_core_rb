require_relative 'keyboard'
require_relative 'mouse'
require_relative 'select'
require_relative '../model/findby'

module Event 
  class Keyboard < Default
  	INSTANCE = KeyboardEvent.new
  end

  class Mouse
  	INSTANCE = MouseEvent.new
  end

  class SelectItem
  	INSTANCE = SelectEvent.new
  end 
end