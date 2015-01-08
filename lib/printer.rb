require_relative 'timer'
require 'colorize'

class Printer
  attr_reader :timer

  def initialize
    @timer = Timer.new
  end

  def welcome
    clear_screen
    puts '
    ___  ___             _                           _             _
    |  \/  |            | |                         (_)           | |
    | .  . |  __ _  ___ | |_   ___  _ __  _ __ ___   _  _ __    __| |
    | |\/| | / _` |/ __|| __| / _ \| "__|| "_ ` _ \ | || "_ \  / _` |
    | |  | || (_| |\__ \| |_ |  __/| |   | | | | | || || | | || (_| |
    \_|  |_/ \__,_||___/ \__| \___||_|   |_| |_| |_||_||_| |_| \__,_|'.magenta

    "\n\nWelcome to Mastermind\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions
    "\nPick amongst four colors: \n(r)ed \n(g)reen \n(b)lue and \n(y)ellow.\nOnly those four. Complicated right?\nYou can (q)uit any time, butthead.\nSo want to (p)lay?"
  end

  def game_start_blurb
    "\nI've generated a beginner sequence made up of four elements: (r)ed, (g)reen, (b)lue and (y)ellow.\nUse (q)uit at any time to end the game.\nWhat's your guess?"
  end

  def invalid_commands
    "\nThose are your only choices genius. Pay attention
    \nNope! Don't recognize that command
    \nYour choices are (p)lay, read complicated (i)nstructions, or (q)uit.
    \nPick one please."
  end


  def prompt_for_answer
    "\nHah! Try again!\n :-)" #has to appear after every wrong guess
  end

  def rage_quit
    "\nWell, I'm not surprised.\nThere are better games out there.\nAnd anything's better than Battleship... "
  end

  def turns_left
    "That was turn number: \n"
    "Number of turns left:"
  end

  def not_enough_guesses
    "\nToo short. So many options on that keyboard, and you decide to come up short. Add more guesses."
  end

  def too_many_guesses
    "\nAnswer is too long. Stop jamming random keys."
  end

  def end_game_sequence(secret_code)
    "\nCongrats! You guessed the secret code: #{secret_code}".red #at #{@timer.minutes} minutes and #{@timer.seconds} seconds.
  end

  def prompt_at_end
    "\nDo you want to (p)lay another round, read those super complex (i)nstructions again \nor (q)uit? And do something something useful..."
  end

  def clear_screen
    print "\e[2J\e[f"
  end


end
