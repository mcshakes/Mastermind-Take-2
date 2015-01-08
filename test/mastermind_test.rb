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
    assert_equal "\nI've generated a beginner sequence made up of four elements: (r)ed, (g)reen, (b)lue and (y)ellow.\nUse (q)uit at any time to end the game.\nWhat's your guess?", printer.game_start_blurb
  end

  def test_it_generates_a_sequence
    mm_1 = Mastermind.new
    codemaker = Codemaker.new
    assert codemaker.secret_code
  end

  def test_the_randomness_of_sequences
    skip
    mm = Mastermind.new
    super_secret = mm.secret_code
    sequences = []
    100.times do
      sequences << super_secret
    end
    unique_sequences = sequences.uniq
    assert unique_sequences.count > 1
  end

  def test_it_wins_if_correct
    skip
    mm = Mastermind.new
    cm = Codemaker.new
    secret_code = cm.secret_code
    playtime = mm.play
    input = user_input.downcase
    input == secret_code
    assert true, mm.win?
  end

  def test_it_brings_back_to_main_menu_after_win
    skip
    mm = Mastermind.new
    mm.start
    correct_answer = mm.start


    mm.win
  end
end
