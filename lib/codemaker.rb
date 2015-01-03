class Codemaker
  attr_reader :colors, :secret_code

  def initialize
    @colors = ["r", "g", "b", "y"]
    @secret_code = (0..3).map { colors.sample }
  end

  # Why does initializing secret code allow it to have all four colors
  # while below, only one (without the 4.times)

  # def secret_code
  #   4.times do
  #   [0..3].map {colors.sample}
  #   end
  # end
end

code = Codemaker.new
code.secret_code
