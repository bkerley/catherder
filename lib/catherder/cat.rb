require 'catherder/sprite'

module Catherder
  class Cat < Sprite
    def initialize(window)
      super window
      load_image "cat.png"

      self.x = rand(window.width / 2) + (window.width / 4)
      self.y = rand(window.height / 2) + (window.height / 4)
    end
  end
end
