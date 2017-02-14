module Catherder
  class Window < Gosu::Window
    attr_accessor :human, :cat, :bowl

    def initialize
      super 800, 600, false
      self.caption = 'cat herder'

      self.human = Human.new(self)
      self.bowl = Bowl.new(self)
      self.cat = Cat.new(window: self,
                         human: self.human,
                         bowl: self.bowl)

      @sprites = [cat, human, bowl]
    end

    def update
      @sprites.each(&:update)
    end

    def draw
      @sprites.each(&:draw)
    end
  end
end
