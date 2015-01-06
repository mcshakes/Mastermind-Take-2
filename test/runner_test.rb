require 'minitest/autorun'
require 'minitest/pride'
require './lib/runner'

class RunnerTest < Minitest::Test

  def test_user_can_play
    cli = Runner.new(nil,nil)
    cli.stub :user_input, 'p' do
      refute cli.end?
      assert cli.play?
      refute cli.instructions?
    end
  end

  def test_user_can_view_instructions
    cli = Runner.new(nil,nil)
    cli.stub :user_input, 'i' do
      refute cli.end?
      refute cli.play?
      assert cli.instructions?
    end
  end

  def test_user_can_quit
    cli = Runner.new(nil,nil)
    cli.stub :user_input, 'q' do
      assert cli.end?
      refute cli.play?
      refute cli.instructions?
    end
  end

  # testing for messages. Do it


end
