require 'catherder/sprite'

module Catherder
  class Cat < Sprite
    attr_accessor :human, :bowl

    def initialize(window: , human: , bowl: )
      super window

      self.human = human
      self.bowl = bowl

      load_image "cat.png"

      self.x = rand(window.width / 2) + (window.width / 4)
      self.y = rand(window.height / 2) + (window.height / 4)
    end
  end
end
