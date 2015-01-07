require './lib/printer'
require 'pry'

class Menu
  attr_reader :printer

  def initialize
    @printer = Printer.new
  end

  # def active?
  #   @active
  # end

  def start
    @active = true
    return [printer.welcome, :go] # displays Welcome message # needs to be in mastermind
  end

  def execute(input)
    case input
    when 'q' then ["goodbye!", :stop]
    when 'i' then ["instructions go here", :continue]
    when 'p'
      @active = false
      [@printer.game_start, :start_game]
    end
  end

end
