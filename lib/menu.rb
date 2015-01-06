class Menu

  def active?
    @active
  end

  def start
    @active = true
    return ["let's play a game. q or p. choose.", :go] # flesh out in printer.rb
  end

  def execute(input)
    case input
    when 'q' then ["goodbye!", :stop]
    when 'i' then ["instructions go here", :continue]
    when 'p'
      @active = false
      ["starting game", :start_game]
    end
  end

  # def player_choices
  #   output.puts printer.welcome
  #   until end?
  #     @user_input = input.gets.strip.downcase
  #     menu_sequence
  #   end
  #   output.puts printer.end_game
  # end
  #
  # def menu_sequence
  #   case
  #   when play?
  #     Mastermind.new.play   # play is execute or play the game
  #   when instructions?
  #     output.puts printer.instructions
  #   when end?
  #     output.puts printer.end_game
  #     abort
  #   else
  #     output.puts printer.invalid_command
  #   end
  # end
  #
  # def end?
  #   user_input == "q"
  # end
  #
  # def play?
  #   user_input == 'p'
  # end
  #
  # def instructions?
  #   user_input == "i"
  # end


end
