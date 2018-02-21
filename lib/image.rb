class Image
  attr_reader :width, :height, :pixels

  def initialize(width = 0, height = 0)
    @width = width.to_i
    @height = height.to_i

    if @width >= 1 && @height >= 1
      create_image
    end
  end

  def create_image
    @pixels = (1..@height).map{ (1..@width).map{"O"} }

    # show the preview of the image
    @pixels.each do |e|
      puts e.join(' ')
    end
  end
end
