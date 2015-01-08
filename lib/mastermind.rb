require_relative 'codemaker'
require_relative 'guess_evaluator'
require_relative 'guess_validator'
require_relative 'printer'
require_relative 'runner'
require_relative 'guess_checker'
require_relative 'timer'

class Mastermind
  attr_reader :printer, :codemaker, :user_input, :timer, :guess_count

  def initialize
    @printer     = Printer.new
    @guess_count = 0
  end

  def play
    @codemaker   = Codemaker.new
    @secret_code = @codemaker.secret_code

    # p "Secret Code for testing: #{codemaker.secret_code}"
    puts printer.game_start_blurb
    @timer       = Timer.new
    until win?
      @user_input = gets.chomp.downcase
      guess_counter
      time_elapsed
      @checker = GuessChecker.new(@user_input, @secret_code)
      quit? if user_input == "q"
      @checker.correct_colors
      @checker.correct_positions
      @checker.check_length
      if @user_input.chars != @secret_code
        puts printer.prompt_for_answer
      elsif @user_input.chars == @secret_code
        puts printer.end_game_sequence(codemaker.secret_code)
        puts printer.prompt_at_end
      end
    end
  end

  def guess_counter
    @guess_count += 1
    puts printer.print_count(@guess_count)
  end

  def time_elapsed
    puts printer.your_time_played(@timer.total_elapsed_time)
  end

  def win?
    user_input == codemaker.secret_code.join
  end

  def quit?
    puts printer.rage_quit
    exit
  end

end
