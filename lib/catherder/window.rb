module Catherder
  class Window < Gosu::Window
    attr_accessor :human, :cat, :cats, :bowl, :congratulations

    def initialize
      super 800, 600, false
      self.caption = 'cat herder'

      floor = Floor.new(self)
      self.human = Human.new(self)
      self.bowl = Bowl.new(self)
      self.cats = 100.times.map{Cat.new(window: self,
                                       human: self.human,
                                       bowl: self.bowl)}
      self.cat = cats.first

      self.congratulations = Congratulations.new(self)

      @sprites = [floor, bowl, *cats, human, congratulations]
    end

    def button_up(id)
      if id == Gosu::KB_SPACE
        @sprites.each(&:restart_game)
      end
      super
    end

    def update
      @sprites.each(&:update)
    end

    def draw
      @sprites.each(&:draw)
    end

    def win!
      congratulations.win!
    end
  end
end
