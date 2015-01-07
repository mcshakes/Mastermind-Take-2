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
    @messages = Printer.new
  end

  def start
    @active = true
    @codemaker = Codemaker.new
  end

  def execute(input)
    # signal == :start_game
     ["game_start", :play]
     # prompt user for the choice
     # Take choice, compare to
     # .lib/guess_eval and guess_validator
    ## Until correct, print out
     # messages showing correct colors and positions
    ## If correct, go back to signal :win from runner.rb

    # if guess is right, queue :win method
    ["Winner message!", :win] # remember the win message and the
    # else
    #   give feedback
    # flesh out gameplay for ["2 correct colors, 1 correct position", :continue]


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
