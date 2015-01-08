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
    unless colors > 1
      puts "You have #{colors} color that's correct."
    else
      puts "#{colors} colors are correct"
    end
  end

  def correct_positions
    positions = @evaluator.correct_positions
    unless positions > 1
      puts "You have #{positions} correct position."
    else
      puts "#{positions} positions are correct."
    end
  end

  def check_length
    if @guess.length < 4
      puts printer.not_enough_guesses
    elsif @guess.length > 4
      puts printer.too_many_guesses
    end
  end

  def check_proper_colors
    unless colors > 1
      puts "You have #{colors} color that's correct."
    else
      puts "#{colors} colors are correct"
    end
    #puts "#{colors} color#{'s' unless colors == 1} are correct".yellow
  end


end
