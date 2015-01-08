require_relative 'printer'

class GuessChecker
  attr_reader :printer

  def initialize(guess, code)
    @code = code
    @evaluator = GuessEvaluator.new(guess, @code)
    @guess = guess
    @printer = Printer.new
  end

  def correct_colors
    colors = @evaluator.correct_colors
    puts "You have #{colors} correct color#{'s' unless colors == 1}."
  end

  def correct_positions
    positions = @evaluator.correct_positions
    puts "You have #{positions} correct position#{'s' unless positions == 1}."
  end

  def check_length
    if @guess.length < 4
      puts printer.not_enough_guesses
    elsif @guess.length > 4
      puts printer.too_many_guesses
    end
  end

end
