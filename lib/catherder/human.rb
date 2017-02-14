require 'catherder/sprite'

module Catherder
  class Human < Sprite
    SPEED = 2
    def initialize(window)
      super window
      load_image "human.png"

      self.x = self.image.width
      self.y = window.height / 2
    end

    def update
      if window.button_down? Gosu::KbLeft
        self.x -= SPEED
      elsif window.button_down? Gosu::KbRight
        self.x += SPEED
      end

      if window.button_down? Gosu::KbUp
        self.y -= SPEED
      elsif window.button_down? Gosu::KbDown
        self.y += SPEED
      end
    end
  end
end
