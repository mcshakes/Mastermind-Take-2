require './lib/mastermind'
require './lib/printer'

class Runner
  attr_reader :printer, :menu, :game

  def initialize(input, output)
    @menu = Menu.new
    @printer = Printer.new
    @game = Mastermind.new
  end

  def run
    # this is only thing in Runner.rb
    # while we should keep going...
      # get input from user
      # if menu is active, send it to the menu
      # if the game is active, send input to the game
      # print feedback from menu/game
      # figure out if we should keep going
    feedback = menu.start
    message = feedback[0]
    signal = feedback[1]

    puts message

    until signal == :stop || signal == :broken
    # until [:stop, :broken].include?(signal)
      input = gets.chomp.strip.downcase
      if menu.active?
        feedback = menu.execute(input)

        message = feedback[0]
        signal = feedback[1]

        if signal == :start_game
          feedback = game.start
        end

      elsif game.active?
        feedback = game.execute(input)

        if signal == :win
          # go back to main menu
        end
      else
        feedback = ["uhh... what's happening?", :broken]
      end

      message = feedback[0]
      signal = feedback[1]

      puts message
    end
  end

end
