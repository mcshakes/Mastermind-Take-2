require_relative 'codemaker'
require_relative 'guess_evaluator'
require_relative 'guess_validator'
require_relative 'printer'
require_relative 'runner'

class Mastermind
  attr_reader :sequence, :printer, :codemaker

  def initialize
    @codemaker = Codemaker.new
    @printer = Printer.new
  end

  def generate_sequence
    p "Secret Code for testing: #{codemaker.secret_code}"
  end

  def play
    puts printer.game_start_blurb # can colorize(:blue)
    until win?
      @user_input = gets.chomp.downcase
      quit if user_input == "q"
      @evaluator = GuessEvaluator.new(user_input.chars, codemaker.code)
      corect_colors
      correct_positions
      check_length
    end
  end


  #### Put in Checker ####

  def correct_colors
    colors = @guess_evaluator.correct_colors
    unless colors > 1
      puts "You have #{colors} color that's correct."
    else
      puts "#{colors} colors are correct"
    end
  end

  def check_length
    if @user_input.length < 4
      puts printer.not_enough_guesses
    elsif @user_input.length > 4
      puts printer.too_many_guesses
    end
  end

  def correct_positions
    positions = @guess_evaluator.correct_positions
    unless positions > 1
      puts "You have #{positions} correct position.".yellow
    else
      puts "#{positions} positions are correct.".yellow
    end
  end

  def check_proper_colors
    unless colors > 1
      puts "You have #{colors} color that's correct.".yellow
    else
      puts "#{colors} colors are correct".yellow
    end
    #puts "#{colors} color#{'s' unless colors == 1} are correct".yellow
  end

  def stop
  # Where the you quit from runner.rb
  #
  end

  def win
    # Then return to main menu
  end
end
