require 'minitest/autorun'
require 'minitest/pride'
require './lib/runner'

class RunnerTest < Minitest::Test

  def test_user_can_play
    skip
    cli = Runner.new(nil,nil)
    cli.stub :user_input, 'p' do
      refute cli.finished?
      assert cli.
      refute cli.instructions?
    end
  end
  #
  # def test_user_can_view_instructions
  #   skip
  #   cli = Runner.new(nil,nil)
  #   cli.stub :user_input, 'i' do
  #     refute cli.finished?
  #     refute cli.play
  #     assert cli.instructions?
  #   end
  # end
  #
  # def test_user_can_quit
  #   skip
  #   cli = Runner.new(nil,nil)
  #   cli.stub :user_input, 'q' do
  #     assert cli.finished?
  #     refute cli.play
  #     refute cli.instructions?
  #   end
  # end

  def test_it_prints_instructions
    skip
    output = StringIO.new
    readable = Runner.new(StringIO.new, output)
    printer = Printer.new
    result = printer.instructions
    readable.initial_input("i")
    output.rewind
    assert_equal result, test_output.read
  end
end
