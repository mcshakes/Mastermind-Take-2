class Codemaker
  attr_reader :colors, :secret_code

  def initialize
    @colors = ["r", "g", "b", "y"]
    @secret_code = (0..3).map { colors.sample }
  end

end

# code = Codemaker.new
# code.secret_code
