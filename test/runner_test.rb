require 'minitest/autorun'
require 'minitest/pride'
require './lib/runner'

class RunnerTest < Minitest::Test

  def test_user_can_play
    cli = Runner.new(nil,nil)
    cli.stub :user_input, 'p' do
      refute cli.finished?
      assert cli.play?
      refute cli.instructions?
    end
  end

  def test_user_can_view_instructions
    cli = Runner.new(nil,nil)
    cli.stub :user_input, 'i' do
      refute cli.finished?
      refute cli.play?
      assert cli.instructions?
    end
  end

  def test_user_can_quit
    cli = Runner.new(nil,nil)
    cli.stub :user_input, 'q' do
      assert cli.finished?
      refute cli.play?
      refute cli.instructions?
    end
  end

  # def test_it_quits
  #   cli = Runner.new
  #   execute = cli.initial_menu_processes
  #   feedback = cli.execute("q")
  #   message = feedback[0] # make sure to write this out
  #   signal = feedback[1]
  #   assert_equal :stop, signal
  # end
  #
  # def test_it_prints_instructions
  #   skip
  #   menu = Menu.new
  #   menu.start
  #   feedback = menu.execute("i")
  #   message = feedback[0] # fix this shit in printer
  #   signal = feedback[1]
  #   assert_equal :continue, signal
  # end
  #
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
  # def test_it_can_start_a_game
  #   skip
  #   menu = Menu.new
  #   menu.start
  #   feedback = menu.execute("p")
  #   message = feedback[0]
  #   signal = feedback[1]
  #   refute menu.active?
  #   assert_equal :start_game, signal
  # end




end
