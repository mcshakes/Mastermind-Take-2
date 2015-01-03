class Codemaker
  attr_reader :colors, :secret_code

  def initialize
    @colors = ["r", "g", "b", "y"]
    @secret_code = (0..3).map { colors.sample }
  end

  # def colors
  #   ["r","g","b","y"]
  # end

  # Why does initializing secret code allow it to have all four colors
  # while below, only one.

  # def secret_code
  #   [0..3].map {colors.sample}  # => ["g"]
  # end
end

code = Codemaker.new
code.secret_code
