# You can't modify this code

class SidewinderJoystick
  BUTTON_UP = 2
  BUTTON_DOWN = 3

  def get_x_axis(stick_id) # returns -1.0 to 1.0
  def get_y_axis(stick_id) # returns -1.0 to 1.0
  def button(button_id)  # Returns BUTTON_UP or BUTTON_DOWN
end

# You can't modify this code

class XboxGamepad
  def get_x_axis(stick_id) # returns -128 to 127
  def get_y_axis(stick_id) # returns -128 to 127
  def button_status(button_id)  # float from 0.0 (up) to 1.0 (down)
end

class Player
  def initialize(joystick)
    @x = 0
    @y = 0
    @joystick = joystick
  end

  def update()   # called every game frame
    @x += joystick.get_x(1)
    @y += joystick.get_y(1)

    if @joystick.button_pressed?(4)
      self.fire_lasers()
    end

    self.update_graphics()
  end

  # ...

end

class WrappedSidewinderJoystick
    def initialize
        sidewinder = SidewinderJoystick.new
    end

    def get_x(stick_id)
        sidewinder.get_x_axis(stick_id)
    end

    def get_y(stick_id)
        sidewinder.get_x_axis(stick_id)
    end

    def button_pressed?(button_id)
        if sidewinder.button(button_id) == BUTTON_UP
            return false
        else
            return true
        end
    end
end

class WrappedXboxController
    def initialize
        controller = XboxGamepad.new
    end

    def get_x(stick_id)
        value = controller.get_x_axis(stick_id)
        if value <= 0
            value = value / 128
        elsif value >= 0
            value = value / 127
        end
        value
    end

    def get_y(stick_id)
        controller.get_x_axis(stick_id)
        if value <= 0
            value = value / 128
        elsif value >= 0
            value = value / 127
        end
        value
    end

    def button_pressed?(button_id)
        if controller.button(button_id) == 0
            return false
        else
            return true
        end
    end
end



if config.joystick == SIDEWINDER
  joystick = WrappedSidewinderJoystick.new
elsif config.joystick == XBOX
  joystick = WrappedXboxController.new
end

p = Player.new(joystick)

# Keyboard would likely be its own object class, with outputs depending on key inputs.
# The Author was being shortsided by not considering other controllers being used, and hardcoding the sidewinder into Player.