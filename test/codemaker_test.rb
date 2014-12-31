require 'minitest/autorun'
require 'minitest/pride'
require './lib/codemaker'

class CodeMakerTest < Minitest::Test
  def test_color_code_exists
    codemaker = Codemaker.new
    assert codemaker
  end

  def test_it_makes_color_code
    skip
    codemaker = Codemaker.new
    assert_equal 4, codemaker.code.length
  end

  def test_secret_code_is_an_array
    skip
    codemaker = Codemaker.new
    assert_equal Array, codemaker.code.class
  end

  ## Use stub to test for randomness. See Rachel's Numbermind

end
