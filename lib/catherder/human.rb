require 'catherder/sprite'

module Catherder
  class Human < Sprite
    SPEED = 10

    def initialize(window)
      super window
      load_image "human.png"

      self.x = self.image.width
      self.y = window.height / 2
    end

    def update
      super

      adjusted_speed = SPEED * elapsed_frames

      if window.button_down? Gosu::KbLeft
        self.x -= adjusted_speed
      elsif window.button_down? Gosu::KbRight
        self.x += adjusted_speed
      end

      if window.button_down? Gosu::KbUp
        self.y -= adjusted_speed
      elsif window.button_down? Gosu::KbDown
        self.y += adjusted_speed
      end
    end
  end
end
