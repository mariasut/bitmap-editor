class BitmapEditor
  attr_reader :image

  def initialize(image)
    @image = image
  end

  def run(file)
    return puts "please provide correct file" if file.nil? || !File.exists?(file)

    File.open(file).each do |line|
      line = line.chomp
      execute_command(line)
    end
  end

  private

  def execute_command(input)
    # get all the arguments
    arguments = input.split(" ")
    command = arguments.shift

    run_command(command, arguments)
  end

  def run_command(command, arguments)
    # process each command
    case command
      when "I"
        create_image(arguments)
      when "C"
        clear_table
      when "L"
        colour_pixel(arguments)
      when "V"
        draw_vertical_segment(arguments)
      when "H"
        draw_horizontal_segment(arguments)
      when "S"
        @image.show_image
      else
        abort "Unrecognised command :("
    end
  end

  def create_image(arguments)
    column, row = arguments
    @image = Image.new(column, row)
  end

  def clear_table
    @image.create_image
  end

  def colour_pixel(arguments)
    arguments.length == 3 ? @image.colour_pixel(arguments) : display_error
  end

  def draw_vertical_segment(arguments)
    arguments.length == 4 ? @image.draw_vertical_segment(arguments) : display_error
  end

  def draw_horizontal_segment(arguments)
    arguments.length == 4 ? @image.draw_horizontal_segment(arguments) : display_error
  end

  def display_error
    abort "Command contains invalid parameters"
  end

end
