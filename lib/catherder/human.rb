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

    end
  end
end
