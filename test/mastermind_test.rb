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
    printer = Printer.new
    feedback = runner.initial_menu_commands
    feedback = 'p'
    assert_equal printer.game_start, message
  end

  def test_it_generates_sequences
    skip
    mm_1 = Mastermind.new
    mm_1.start
    mm_2 = Mastermind.new
    mm_2.start
    assert mm_1 != mm_2
  end

  def test_the_randomness_of_sequences
    skip
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
    secret_code = mm.start
    result = mm.execute(input)
    result == secret_code
    assert mm.win
    assert result.downcase.include?("win")
  end

  def test_it_brings_back_to_main_menu_after_win
    skip
    mm = Mastermind.new
    mm.start
    correct_answer = mm.start


    mm.win
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


end
