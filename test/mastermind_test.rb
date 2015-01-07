require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'

# require '../lib/mastermind' ##This only allows me to run individual tests.
# above with one dot allows me to run rake. why?

class MastermindTest < Minitest::Test

  def test_it_exists
    assert Mastermind.new
  end

  def test_it_starts_the_game
    mm = Mastermind.new
    menu = Menu.new
    printer = Printer.new
    feedback = menu.execute('p')
    message = feedback[0]
    signal = feedback[1]
    assert_equal :start_game, signal
    assert_equal printer.game_start, message
  end

  def test_it_generates_sequences
    mm_1 = Mastermind.new
    mm_1.start
    mm_2 = Mastermind.new
    mm_2.start
    assert mm_1 != mm_2
  end

  def test_the_randomness_of_sequences
    mm = Mastermind.new
    sequences = []
    100.times do
      sequences << mm.start
    end
    unique_sequences = sequences.uniq
    assert unique_sequences.count > 1
  end

  def test_it_wins_if_correct
    skip
    mm = Mastermind.new
    result = mm.execute("BBGB")
    assert result.downcase.include?("win")
  end

  def test_it_brings_back_to_main_menu_after_win
    skip
  end

  def test_it_wins_first_try
    skip
    mm = Mastermind.new
    mm.start
    answer = mm.sequence  # remove this hardcoded in .start
    feedback = mm.execute(answer)
    message = feedback[0]
    signal = feedback[1]
    assert_equal :win, signal
  end

  def test_it_brings_back_to_main_menu_after_win
    skip
  end


end
