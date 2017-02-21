module Catherder
  class Sprite
    attr_accessor :window, :image,
                  :x, :y,
                  :previous_ms, :current_ms, :delta_ms

    def initialize(window)
      self.previous_ms = Gosu.milliseconds
      self.current_ms = Gosu.milliseconds
      self.window = window
      self.x = 0
      self.y = 0
    end

    def update
      self.previous_ms = self.current_ms
      self.current_ms = Gosu.milliseconds
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

    def elapsed_frames
      (current_ms - previous_ms) / (1000/60.0)
    end
  end
end
