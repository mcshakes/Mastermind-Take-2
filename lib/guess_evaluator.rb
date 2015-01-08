require_relative 'codemaker'

class GuessEvaluator
  attr_reader :guess, :secret_code

  def initialize(guess, secret_code)
    @guess = guess
    @secret_code = secret_code
  end

  def correct_colors
    duplicate = secret_code.dup
    guess.chars.each do |color|
      if duplicate.include?(color)
        duplicate.delete(color)
      end
    end
    4 - duplicate.length
  end

  def correct_positions
    counter = 0
    combined = guess.chars.zip(secret_code)
    combined.select do |code, turn|
      if code == turn
        counter += 1
      end
    end
    counter
  end
end
