require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_checker'

class CheckerTest < Minitest::Test

  def test_guess_checker_exists
    skip
    @code = code
    @guess = guess
    assert GuessChecker.new(guess, @code)
  end

  def test_win_works
    skip
    checker = GuessChecker.new(guess, code)
    refute checker.win?("rrrb", "rggy")
    assert checker.win?("rrrb", "rrrb")
  end



end
