require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_validator'

class GuessValidatorTest < Minitest::Test

  def test_it_exists
    validator = GuessValidator.new(guess, colors='rgby')
    assert GuessValidator.new
  end

  def test_guess_is_too_long
    skip
    validator = GuessValidator.new
    guess = "BRRBGY"
    assert validator.too_long?(guess)
    guess = "RBGY"
    refute validator.too_long?(guess)
  end

  def test_guess_includes_valid_characters_only
    skip

  end

end
