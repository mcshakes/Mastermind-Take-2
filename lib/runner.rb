require './lib/mastermind'
require './lib/printer'

class Runner
  attr_reader :printer, :user_input, :output, :input

  def initialize(input, output)
    @printer = Printer.new
    @input = input
    @output = output
    @user_input = ''
  end

  def player_choices
    output.puts printer.welcome
    until end?
      @user_input = input.gets.strip.downcase
      menu_sequence
    end
    output.puts printer.end_game
  end

  def menu_sequence
    case
    when play?
      Mastermind.new.play  # play to actually begin
    when instructions?
      output.puts printer.instructions
    when end?
      output.puts printer.end_game
      abort
    else
      output.puts printer.invalid_command
    end
  end

  # user_input = ""
  # mastermind = Mastermind.new
  #
  # while input != "q"
  #   print "> "
  #   input = gets.chomp
  #   puts mastermind.execute(input)
  # end

  def end?
    user_input == "q"
  end

  def play?
    user_input == 'p'
  end

  def instructions?
    user_input == "i"
  end



end
