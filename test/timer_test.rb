require 'minitest/autorun'
require 'minitest/pride'
require './lib/timer'

class TimerTest < Minitest::Test

  def test_has_end_timer
    timer = Timer.new
    assert timer.respond_to?(:end_timer)
  end

  def test_has_a_start_time
    timer = Timer.new
    assert timer.start
  end

  def test_has_an_end_time
    timer = Timer.new
    timer.end_timer
    assert timer.end
  end

  def test_timer_works_when_sleeping
    timer = Timer.new
    sleep(2)
    timer.end_timer
    assert_equal 2 , timer.time_elapsed
  end

  def test_current_elapsed_time_works
    timer = Timer.new
    sleep(2)
    assert_equal 2, timer.total_elapsed_time
  end

end
