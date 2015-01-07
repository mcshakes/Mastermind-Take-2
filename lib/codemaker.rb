class Codemaker
  attr_reader :colors, :secret_code  # => nil

  def initialize
    @colors = ["r", "g", "b", "y"]               # => ["r", "g", "b", "y"]
    @secret_code = (0..3).map { colors.sample }  # => ["b", "g", "y", "g"]
  end

  # Why does initializing secret code allow it to have all four colors
  # while below, only one (without the 4.times)

  # def secret_code
  #   4.times do
  #   [0..3].map {colors.sample}
  #   end
  # end
end

code = Codemaker.new  # => #<Codemaker:0x007fea818d52c0 @colors=["r", "g", "b", "y"], @secret_code=["b", "g", "y", "g"]>
code.secret_code      # => ["b", "g", "y", "g"]
