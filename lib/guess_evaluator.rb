require_relative 'codemaker'

class GuessEvaluator
  attr_reader :guess, :secret_code

  def initialize(guess, secret_code)
    @guess = guess
    @secret_code = secret_code
  end

  def correct_colors
    duplicate = secret_code.dup
    guess.each do |color|
      if duplicate.include?(color)
        duplicate.delete(color)
      end
    end
    4 - duplicate.length
  end

  # def correct_colors
  #   total = 0
  #   guess = ["r","g","g","y"].uniq
  #   secret_code = ["b","g","r","g"].uniq
  #   # duplicate = guess.dup
  #   secret_code.map do |color|
  #     if guess.include?(color)
  #       total += 1
  #     end
  #   end
  #   total
  # end

  def correct_positions
    counter = 0
    combined = guess.zip(secret_code)
    combined.select do |code, turn|
      if code == turn
        counter += 1
      end
    end
    counter
  end
end

c = GuessEvaluator.new(["r","g","g","y"], ["b","g","r","g"])
c.correct_colors

# For finding indexs and duplicates: https://www.ruby-forum.com/topic/4105409
