require 'catherder/sprite'

module Catherder
  class Human < Sprite
    SPEED = 10
    SQRT_TWO = Math.sqrt(2)

    def initialize(window)
      super window
      load_image "human.png"

      self.x = self.image.width
      self.y = window.height / 2
    end

    def update
      super

      adjusted_speed = SPEED * elapsed_frames
      delta_x = 0
      delta_y = 0

      if window.button_down? Gosu::KbLeft
        delta_x -= adjusted_speed
      elsif window.button_down? Gosu::KbRight
        delta_x += adjusted_speed
      end

      if window.button_down? Gosu::KbUp
        delta_y -= adjusted_speed
      elsif window.button_down? Gosu::KbDown
        delta_y += adjusted_speed
      end

      if delta_x != 0 && delta_y != 0
        delta_x /= SQRT_TWO
        delta_y /= SQRT_TWO
      end

      self.x += delta_x
      self.y += delta_y
    end
  end
end
