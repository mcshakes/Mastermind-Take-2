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
    # output.puts printer.clear_screen # come back to this
    output.puts printer.welcome
    until finished?
      @user_input = input.gets.strip.downcase
      initial_menu_processes
    end
    output. puts printer.end_game_sequence
  end

  def initial_menu_processes
    case user_input
    when "p" then Mastermind.new.play
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


# def run
#   feedback = menu.start
#   message = feedback[0]
#   signal = feedback[1]
#   puts message            # Is this the welcome message?
#
#   until signal == :stop || signal == :broken
#   # until [:stop, :broken].include?(signal)
#     input = gets.chomp.strip.downcase
#     if menu.active?
#       feedback = menu.execute(input)
#
#       message = feedback[0]
#       signal = feedback[1]
#
#       if signal == :start_game
#         feedback = game.start
#       end
#
#     elsif game.active?
#       feedback = game.execute(input)
#       if signal == :win
#         # display the winning message and
#         # bring back menu to give them option
#       else
#         # call feedback against correct_colors & correct_positions
#         # display
#         # line 34
#         # win loop needs to be pulled out of mmind and into here
#         # go back to main menu
#       end
#     else
#       feedback = ["uhh... what's happening?", :broken]
#     end
#     message = feedback[0]
#     signal = feedback[1]
#     puts message
#   end
# end
