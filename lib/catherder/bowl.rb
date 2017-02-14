require 'catherder/sprite'

module Catherder
  class Bowl < Sprite
    def initialize(window)
      super window
      load_image "human.png"
    end
  end
end
