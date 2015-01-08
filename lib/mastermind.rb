require_relative 'codemaker'
require_relative 'guess_evaluator'
require_relative 'guess_validator'
require_relative 'printer'
require_relative 'runner'
require_relative 'guess_checker'
require_relative 'timer'

class Mastermind
  attr_reader :printer, :codemaker, :user_input, :timer

  def initialize
    @codemaker   = Codemaker.new
    @printer     = Printer.new
    @secret_code = @codemaker.secret_code
    @timer       = Timer.new
  end

  def play
    # p "Secret Code for testing: #{codemaker.secret_code}"
    puts printer.game_start_blurb
    until win?
      @user_input = gets.chomp.downcase
      @checker = GuessChecker.new(@user_input, @secret_code)
      quit? if user_input == "q"
      @checker.correct_colors
      @checker.correct_positions
      @checker.check_length
      printer.prompt_for_answer
    end
    puts printer.end_game_sequence(codemaker.secret_code)
    puts printer.prompt_at_end
  end

  def win?
    user_input == codemaker.secret_code.join
  end

  def quit?
    puts printer.rage_quit
    exit
  end

end
