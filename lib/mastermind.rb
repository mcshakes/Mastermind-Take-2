class Mastermind
  attr_reader :sequence

  def execute(input)

    # if the guess is right
      ["You win!!", :win]
    # else
    #   give feedback on the guess
    #   something like ["2 correct color & position, 1 right color wrong position", :continue]
  end

  def active?
    @active
  end

  def generate_sequence
    ["R", "Y", "B", "G"].shuffle
  end

  def start
    @active = true
    # Generate a sequence here
    @sequence = "RRRR"
    return ["I've generated a sequence. Make a guess:", :go]
  end
end

#This is game.rb
