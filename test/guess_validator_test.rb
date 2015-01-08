require 'minitest/autorun'
require 'minitest/pride'
require './lib/guess_validator'

class GuessValidatorTest < Minitest::Test

  def test_it_exists
    assert GuessValidator.new
  end

  def test_guess_is_too_long
    validator = GuessValidator.new
    secret_code = "RBGY"
    guess = "BRRBGY"
    assert validator.too_long?(guess, secret_code)
    guess = "RBGY"
    refute validator.too_long?(guess, secret_code)
  end

  def test_guess_is_too_short
    validator = GuessValidator.new
    secret_code = "RBGY"
    guess = "BR"
    assert validator.too_short?(guess, secret_code)
    guess = "RBGY"
    refute validator.too_short?(guess, secret_code)
  end

  def test_guess_includes_invalid_characters
    validator = GuessValidator.new
    guess = %w(T 9 Q Z)
    possible_colors = %w(R G B Y)
    assert validator.invalid?(guess, possible_colors)
  end

  def test_guess_is_all_valid
    validator = GuessValidator.new
    guess = %w(R G B Y)
    possible_colors = %w(R G B Y)
    assert validator.invalid?(guess, possible_colors)
  end
end
