require 'minitest/autorun'
require 'minitest/pride'
require './lib/menu'

class MenuTest < Minitest::Test

  def test_it_quits
    skip
    menu = Menu.new
    menu.start
    feedback = menu.execute("q")
    message = feedback[0] # make sure to write this out
    signal = feedback[1]
    assert_equal :stop, signal
  end

  def test_it_prints_instructions
    skip
    menu = Menu.new
    menu.start
    feedback = menu.execute("i")
    message = feedback[0] # fix this shit in printer
    signal = feedback[1]
    assert_equal :continue, signal
  end

  def test_it_can_do_instructions_then_quit
    skip
    menu = Menu.new
    menu.start
    menu.execute("i")
    feedback = menu.execute('q')
    message = feedback[0]
    signal = feedback[1]
    assert_equal :stop, signal
  end

  def test_it_can_start_a_game
    skip
    menu = Menu.new
    menu.start
    feedback = menu.execute("p")
    message = feedback[0]
    signal = feedback[1]
    refute menu.active?
    assert_equal :start_game, signal
  end

end
