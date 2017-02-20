module Catherder
  class Floor < Sprite
    def initialize(window)
      super window
      load_background_image 'labfloor.png'
    end

    def draw
      repeat_x = (window.width.to_f / image.width.to_f).ceil
      repeat_y = (window.height.to_f / image.height.to_f).ceil

      repeat_x.times do |col|
        repeat_y.times do |row|
          image.draw(image.width * col,
                     image.height * row,
                     0)
        end
      end
    end
  end
end
