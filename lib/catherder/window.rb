module Catherder
  class Window < Gosu::Window
    def initialize
      super 800, 600, false
      self.caption = 'cat herder'
    end
  end
end
