class LuhnAlgorithm
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def luhn_valid?()
   num.scan(/\d/).reverse.each_slice(2)
      .sum { |i, k = 0| i.to_i + ((k.to_i)*2).digits.sum }
      .modulo(10).zero?
  end

end
