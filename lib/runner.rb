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

  def run
    # this is only thing in Runner.rb
    # while we should keep going...
      # get input from user
      # if menu is active, send it to the menu
      # if the game is active, send input to the game
      # print feedback from menu/game
      # figure out if we should keep going
    signal = :go

    until signal == :stop || signal == :broken
    # while ![:stop, :broken].include?(signal) same thing
      puts printer.welcome
      input = gets.chomp.strip.downcase
      if menu.active?
        feedback = menu.execute(input)
      elsif game.active?
        feedback = game.execute(input)
      else
        feedback = ["uhh... what's happening?", :broken]
      end

      message = feedback[0]
      signal = feedback[1]

      puts message
    end
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
      Mastermind.new.play   # play is execute or play the game
    when instructions?
      output.puts printer.instructions
    when end?
      output.puts printer.end_game
      abort
    else
      output.puts printer.invalid_command
    end
  end

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
