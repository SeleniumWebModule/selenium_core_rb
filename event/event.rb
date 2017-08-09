require_relative 'keyboard'
require_relative 'mouse'
require_relative 'select'

module Event
  class Keyboard
  	INSTANCE = KeyboardEvent.new
  end

  class Mouse
  	INSTANCE = MouseEvent.new
  end

  class SelectItem
  	INSTANCE = SelectEvent.new
  end
end