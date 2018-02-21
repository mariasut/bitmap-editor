require_relative 'image'

class BitmapEditor
  attr_reader :image

  def initialize
    @image = Image.new
  end

  def run(file)
    return puts "please provide correct file" if file.nil? || !File.exists?(file)

    File.open(file).each do |line|
      line = line.chomp
      execute_command(line)
    end
  end

  def execute_command(input)
    arguments = input.split(" ")
    command = arguments.shift

    run_command(command, arguments)
  end

  private

  def run_command(command, arguments)
    case command
      when 'I'
        create_image(arguments)
      when 'C'
        clear_table
      when 'L'
        colour_pixel(arguments)
      when 'V'
        draw_vertical_segment(arguments)
      when 'H'
        draw_horizontal_segment(arguments)
      when 'S'
        show_image
      else
        puts 'unrecognised command :('
    end
  end

  def create_image(arguments)
    width, height = arguments
    @image = Image.new(width, height)
  end

  def clear_table

  end

  def colour_pixel(arguments)

  end

  def draw_vertical_segment(arguments)

  end

  def draw_horizontal_segment(arguments)

  end

  def show_image

  end

end
