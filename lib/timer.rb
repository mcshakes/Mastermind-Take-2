class Timer
  attr_reader :start, :end

  def initialize
    @start = Time.now
  end

  def end_timer
    @end = Time.now
  end

  def time_elapsed
    (@end - @start).round
  end

  def total_elapsed_time
    (Time.now - @start).round
  end

  def minutes
    timer / 60
  end

  def seconds
    timer % 60
  end
  
end
