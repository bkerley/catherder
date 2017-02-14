require 'catherder/sprite'

module Catherder
  class Human < Sprite
    def initialize(window)
      super window
      load_image "human.png"

      self.x = self.image.width
      self.y = window.height / 2
    end

    def update
      if window.button_down? Gosu::KbLeft
        self.x -= 1
      elsif window.button_down? Gosu::KbRight
        self.x += 1
      end

      if window.button_down? Gosu::KbUp
        self.y -= 1
      elsif window.button_down? Gosu::KbDown
        self.y += 1
      end
    end
  end
end
