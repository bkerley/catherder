module Catherder
  class Window < Gosu::Window
    def initialize
      super 800, 600, false
      self.caption = 'cat herder'

      @sprites = [
        Human.new(self),
        Cat.new(self),
        Bowl.new(self)
      ]
    end

    def update
      @sprites.each(&:update)
    end

    def draw
      @sprites.each(&:draw)
    end
  end
end
