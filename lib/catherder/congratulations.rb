require 'catherder/sprite'

module Catherder
  class Congratulations < Sprite
    attr_accessor :won

    SPEED = 10

    def initialize(window)
      super window
      load_image "congratulations.png"
      restart_game
    end

    def restart_game
      self.x = window.width / 2
      self.y = -image.height
      self.won = false
    end

    def update
      super

      return unless won
      return if self.y >= 200

      adjusted_speed = SPEED * elapsed_frames
      self.y += adjusted_speed
    end

    def draw
      angle = (Gosu.milliseconds / 10) % (360)
      image.draw_rot(x, y, 0, angle)
    end

    def win!
      puts "congratulations! #winning"
      self.won = true
    end
  end
end
