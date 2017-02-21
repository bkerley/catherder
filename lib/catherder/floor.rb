module Catherder
  class Floor < Sprite
    def initialize(window)
      super window
      load_background_image 'labfloor.png'
    end

    def draw
      scroll_amount = ((Gosu.milliseconds) / 10) % image.width

      repeat_x = 3 + (window.width.to_f / image.width.to_f).ceil
      repeat_y = (window.height.to_f / image.height.to_f).ceil

      repeat_x.times do |col|
        x_position = (image.width * (col)) - scroll_amount
        repeat_y.times do |row|
          image.draw(x_position,
                     image.height * row,
                     0)
        end
      end
    end
  end
end
