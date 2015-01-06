require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'
# require '../lib/mastermind' ##This allows me to run individual tests.
# above with one dot allows me to run rake. why?

class MastermindTest < Minitest::Test

  def test_it_exists
    assert MastermindTest
  end

  def test_it_starts_the_game
    skip
  end

  def test_it_enters_gameflow_after_p_is_selected
    skip
  end

  def test_it_wins_first_try
    mm = Mastermind.new
    mm.start
    answer = mm.sequence
    feedback = mm.execute(answer)
    message = feedback[0]
    signal  = feedback[1]

    assert_equal :win, signal
  end

  def test_it_brings_back_to_main_menu_after_win
    skip
  end

  def test_it_generates_sequences
    skip
    mm = Mastermind.new
    sequence_1 = mm.generate_sequence
    sequence_2 = mm.generate_sequence
    assert sequence_1 != sequence_2
  end

  def test_it_generates_sequences
    skip
    mm_1 = Mastermind.new
    mm_1.start

    mm_2 = Mastermind.new
    mm_2.start

    assert mm_1.sequence != mm_2.sequence
  end

  def test_the_randomness_of_sequences
    mm = Mastermind.new
    sequences = []
    100.times do
      sequences << mm.generate_sequence
    end
    unique_sequences = sequences.uniq

    assert unique_sequences.count > 1
  end
end
