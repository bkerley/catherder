module Catherder
  class Sprite
    attr_accessor :window, :image, :x, :y

    def initialize(window)
      self.window = window
      self.x = 0
      self.y = 0
    end

    def update
    end

    def draw
      image.draw(x, y, 0)
    end

    def load_image(filename)
      self.image = Gosu::Image.new(window,
                                   "priv/#{filename}",
                                   false)
    end

    def load_background_image(filename)
      self.image = Gosu::Image.new(window,
                                   "priv/#{filename}",
                                   true)
    end
  end
end
