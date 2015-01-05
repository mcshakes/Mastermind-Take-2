require './lib/mastermind'

class Runner

  def initialize(input, output)
  #need to initialize the messages; separate class
  #input: the actual user input that is put in.
  #output:
  #@user_input = ''
  end

  def user_input
    input = user_input
  end
puts "Welcome to Mastermind"

  def end?
    user_input == "q"
  end

  def play?
    user_input == 'p'
  end

  def instructions?
    user_input == "i"
  end

# user_input = ""
# mastermind = Mastermind.new
#
# while input != "q"
#   print "> "
#   input = gets.chomp
#   puts mastermind.execute(input)
# end
puts "Goodbye!"

end
