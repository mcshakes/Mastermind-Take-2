class Menu
  def active?
    @active
  end

  def start
    @active = true
    return ["Let's play a game. (q)uit or (p)lay?", :go]
  end

  def execute(input)
    case input
    when 'q' then ["Goodbye!", :stop]
    when 'i' then ["Instructions go here", :continue]
    when 'p'
      @active = false
      ["Starting a game", :start_game]
    end
  end
end
