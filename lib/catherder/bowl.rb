require 'catherder/sprite'

module Catherder
  class Bowl < Sprite
    def initialize(window)
      super window
      load_image "bowl.png"

      self.x = window.width - self.image.width
      self.y = window.height / 2
    end
  end
end
