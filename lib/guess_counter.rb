class GuessCounter
  attr_reader :guess_count

  def initialize
    guess_count = 0
  end

  def guess_counter
    @guess_count += 1
  end


end
