require './lib/codemaker'
require './lib/guess_evaluator'
require './lib/guess_validator'
require './lib/printer'
require './lib/runner'
require './lib/menu'

class Mastermind
  attr_reader :sequence, :printer, :codemaker

  def initialize
    @codemaker = Codemaker.new
    @printer = Printer.new
  end

  def play
    puts printer.game_flow_blurb # can coloroze(:blue)
    until win?  #
    end
  end


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
  end


  def active?
    @active
  end

  def stop
  # Where the you quit from runner.rb
  #
  end

  def win
    # Then return to main menu
  end
end
