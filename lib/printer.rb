class Printer

  def welcome
    "\nWelcome to Mastermind"
    "\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
    "<>"
  end

  def end_game
    "\nGoodbye!"
  end

  def instructions
    "\nHow to play"
  end

  def game_start
    "I've generated a beginner sequence made up of four elements: (r)ed,(g)reen, (b)lue, and (y)ellow.
    \nUse (q)uit at any time to end the game.
    \nWhat's your guess?"
  end

  def invalid_command
    "\nPay attention to the choices!"
  end


end
