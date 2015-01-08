require 'minitest/autorun'
require 'minitest/pride'
require './lib/runner'

class RunnerTest < Minitest::Test

  # def test_user_can_play
  #   cli = Runner.new(nil,nil)
  #   cli.stub :user_input, 'p' do
  #     refute cli.finished?
  #     assert cli.play
  #     refute cli.instructions?
  #   end
  # end
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

  # def test_it_quits
  #   cli = Runner.new
  #   execute = cli.initial_menu_processes
  #   feedback = cli.execute("q")
  #   message = feedback[0] # make sure to write this out
  #   signal = feedback[1]
  #   assert_equal :stop, signal
  # end
  #
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

  # def test_it_can_do_instructions_then_quit
  #   skip
  #   menu = Menu.new
  #   menu.start
  #   menu.execute("i")
  #   feedback = menu.execute('q')
  #   message = feedback[0]
  #   signal = feedback[1]
  #   assert_equal :stop, signal
  # end
  #
  def test_it_can_start_a_game
    skip
    menu = Runner.new($stdin,$stdout)
    game = Mastermind.new
    feedback = menu.initial_menu_processes
    assert_equal 'p', feedback.play
  end




end
