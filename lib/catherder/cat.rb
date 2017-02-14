require 'catherder/sprite'

module Catherder
  class Cat < Sprite
    def initialize(window)
      super window
      load_image "cat.png"
    end
  end
end
