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

  end

  def test_it_enters_gameflow_after_p_is_selected

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
end
