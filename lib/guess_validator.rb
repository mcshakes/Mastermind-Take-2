require_relative 'codemaker'

class GuessValidator
  attr_reader :guess, :possible_colors

  # def initialize(guess, colors='rgby')
  #   self.guess = guess
  #   self.possible_colors = colors
  # end

  def possible_colors
    %w(R G B Y)
  end

  def too_long?(guess, secret_code)
    guess.length > secret_code.length
  end

  def too_short?(guess, secret_code)
    guess.length < secret_code.length
  end

  def invalid?(guess, possible_colors)
    guess.find {|color| /[^{possible_colors}]+/ =~ color}
    # .find only gets one letter that is incorrect. Is that enough?
  end
end

val = GuessValidator.new
val.invalid?(%w(T 9 Q Z), %w(R G B Y))
