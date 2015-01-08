require './lib/mastermind'
require './lib/printer'
require 'pry'

class Runner
  attr_reader :printer, :game, :user_input, :input, :output

  def initialize(input, output)
    @printer = Printer.new
    @game = Mastermind.new
    @input = input
    @output = output
    @user_input = ''
  end

  def calls
    output.puts printer.welcome
    until finished?
      @user_input = input.gets.strip.downcase
      initial_menu_processes
    end
    output.puts printer.end_game_sequence
  end

  def initial_menu_processes
    case user_input
      when "p" then game.play
      when "i" then output.puts printer.instructions
      when "q" then output.puts printer.rage_quit
        abort
      else
      output.puts printer.invalid_commands
    end
  end

  def finished?
    user_input == "q"
  end
end
