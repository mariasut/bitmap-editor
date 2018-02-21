require 'bitmap_editor'

RSpec.describe BitmapEditor do
  # it "should parse command" do
  #   bitmap_editor = BitmapEditor.new

  #   expect(bitmap_editor.execute_command("I N M")).to eq("I N M")
  # end

  it "should show a not found error" do
    bitmap_editor = BitmapEditor.new

    expect {bitmap_editor.execute_command("X N M")}.to output("unrecognised command :(\n").to_stdout
  end
end
