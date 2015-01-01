class Codemaker
  #It takes [RGBY].split up
  # It maps through each and picks one by random
  # It displays the random one and that is saved.
  # code has to be something different than the colors to be chosen
  # like instance variables of the code
  def colors
    ["r","g","b","y"]  # => ["r", "g", "b", "y"]
  end

  def secret_code
    [0..3].map do |color|  # => [0..3]
      colors.sample        # => "r"
    end                    # => ["r"]
  end
end

code = Codemaker.new  # => #<Codemaker:0x007f879b135338>
code.secret_code      # => ["r"]
