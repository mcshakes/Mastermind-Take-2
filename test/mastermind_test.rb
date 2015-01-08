require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'

class MastermindTest < Minitest::Test

  def test_it_exists
    assert Mastermind.new
  end

  def test_it_starts_the_game
    mm = Mastermind.new
    printer = Printer.new
    runner = Runner.new($stdin,$stdout)
    feedback = runner.initial_menu_processes
    feedback = 'p'
    assert_equal "I've generated a beginner sequence made up of four elements: (r)ed,(g)reen, (b)lue, and (y)ellow.\nUse (q)uit at any time to end the game.\nWhat's your guess?", printer.game_start_blurb
  end

  def test_it_generates_sequences
    skip
    mm_1 = Mastermind.new
    mm_1.generate_sequence
    mm_2 = Mastermind.new
    mm_2.generate_sequence
    assert mm_1 != mm_2
  end

  def test_it_takes_player_input
    skip
    mm = Mastermind.new

  end



  def test_the_randomness_of_sequences
    skip
    mm = Mastermind.new
    sequences = []
    100.times do
      sequences << mm.generate_sequence
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
