class Image
  WHITE = 'O'

  attr_reader :column, :row, :pixels

  def initialize(column = 0, row = 0)
    @column = column.to_i
    @row = row.to_i

    if @row > 0 && @column > 0
      create_image
    end
  end

  def create_image
    @pixels = (1..@row).map{ (1..@column).map{WHITE} }
  end

  def colour_pixel(arguments)
    x, y, colour = arguments
    @pixels[y.to_i - 1][x.to_i - 1] = colour
  end

  def draw_vertical_segment(arguments)
    x = arguments[0].to_i - 1
    y1 = arguments[1].to_i - 1
    y2 = arguments[2].to_i - 1
    colour = arguments[3]

    (0..@column).each_with_index do |row, i|
      if i >= y1 && i <= y2
        @pixels[row][x] = colour
      end
    end
  end

  def draw_horizontal_segment(arguments)
    x1 = arguments[0].to_i - 1
    x2 = arguments[1].to_i - 1
    y = arguments[2].to_i - 1
    colour = arguments[3]

    (0..@row).each_with_index do |column, i|
      if i >= x1 && i <= x2
        @pixels[y][column] = colour
      end
    end
  end

  def show_image
    @pixels.each do |e|
      puts e.join('')
    end
  end
end
