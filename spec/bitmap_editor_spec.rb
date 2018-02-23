require 'bitmap_editor'
require 'image'

RSpec.describe BitmapEditor do
  it "should display an image" do
    bitmap_editor = BitmapEditor.new(Image.new)

    # use heredoc to properly store the correct output
    output = <<EOT
OOOOO
OOZZZ
AWOOO
OWOOO
OWOOO
OWOOO
EOT
    expect {bitmap_editor.run("spec/fixtures/correct_input.txt")}.to output(output).to_stdout
  end

  it "should alert the user that command is not found" do
    bitmap_editor = BitmapEditor.new(Image.new)

    expect {bitmap_editor.run("spec/fixtures/wrong_input.txt")}.to raise_error(SystemExit)
  end

  it "should alert the user that the arguments are invalid" do
    bitmap_editor = BitmapEditor.new(Image.new)

    expect {bitmap_editor.run("spec/fixtures/wrong_input.txt")}.to raise_error(SystemExit)
  end
end
