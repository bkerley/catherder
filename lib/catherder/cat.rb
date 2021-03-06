require 'catherder/sprite'

module Catherder
  class Cat < Sprite
    attr_accessor :human, :bowl, :state

    attr_accessor :step_x, :step_y, :step_count

    PROXIMITY = 100

    SPEED = 10

    def initialize(window: , human: , bowl: )
      super window

      self.human = human
      self.bowl = bowl
      restart_game
    end

    def restart_game
      self.state = :waiting

      load_image "cat.png"

      self.x = rand(window.width / 2) + (window.width / 4)
      self.y = rand(window.height / 2) + (window.height / 4)
    end

    def update
      super

      case state
      when :waiting
        waiting_update
      when :running
        check_win
        running_update
      end
    end

    def waiting_update
      return if distance_to(human) > PROXIMITY

      take_off
    end

    def running_update
      if step_count <= 0
        self.state = :waiting
        return
      end

      adjusted_speed = SPEED * elapsed_frames

      self.step_count -= elapsed_frames
      self.x += adjusted_speed * step_x
      self.y += adjusted_speed * step_y
    end

    private
    def check_win
      return if distance_to(bowl) > PROXIMITY

      window.win!
      self.state = :won
    end

    def take_off
      target_x = rand(window.width - image.width)
      target_y = rand(window.height - image.height)

      delta_x = x - target_x
      delta_y = y - target_y

      angle = Math.atan2(delta_y, delta_x)
      magnitude = Math.sqrt((delta_x ** 2) + (delta_y ** 2))

      self.step_x = -Math.cos(angle)
      self.step_y = -Math.sin(angle)


      self.step_count = magnitude / SPEED

      self.state = :running
    end

    def distance_to(other)
      Math.sqrt((self.x - other.x)**2 + (self.y - other.y)**2)
    end
  end
end
