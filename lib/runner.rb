require './lib/mastermind'
require './lib/menu'
require './lib/printer'

class Runner
  attr_reader :menu, :game, :printer

  def initialize
    @menu = Menu.new
    @game = Mastermind.new
    @printer = Printer.new
  end

  def run
    feedback = menu.start
    message = feedback[0]
    signal  = feedback[1]

    puts message

    until signal == :stop || signal == :broken
      input = gets.chomp.strip.downcase

      if menu.active?
        feedback = menu.execute(input)

        message = feedback[0]
        signal  = feedback[1]

        if signal == :start_game
          feedback = game.start
        end
      elsif game.active?
        feedback = game.execute(input)

        if signal == :win
          # go back to the menu
        end
      else
        feedback = ["Uhhh...what's happening?", :broken]
      end

      message = feedback[0]
      signal  = feedback[1]

      puts message
    end
  end
end

runner = Runner.new
runner.run
