# Reference for below code taken from https://exercism.io/tracks/ruby/exercises/luhn/solutions/d9add5655baa476fb4f97bfa91645112
class LuhnAlgorithm
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def addends
    raw_addends.map do |digit|
      digit < 10 ? digit : digit - 9
    end
  end

  def checksum
    addends.inject(:+)
  end

  def valid?
    checksum % 10 == 0
  end
  
  def self.create(num)
    [*0..9].each do |digit|
      possible = Luhn.new("#{num}#{digit}".to_i)
      return possible.num if possible.valid?
    end
  end
  
  # This function is not part of original logic referred from https://exercism.io/tracks/ruby/exercises/luhn/solutions/d9add5655baa476fb4f97bfa91645112
  # This function is surplus logic referred from http://rosettacode.org/wiki/Luhn_test_of_credit_card_numbers
  def luhn_valid?(str)
	str.scan(/\d/).reverse            #using str.to_i.digits fails for cases with leading zeros
      .each_slice(2)
      .sum { |i, k = 0| i.to_i + ((k.to_i)*2).digits.sum }
      .modulo(10).zero?
  end
  
  # This function is not part of original logic referred from https://exercism.io/tracks/ruby/exercises/luhn/solutions/d9add5655baa476fb4f97bfa91645112
  # This function is surplus logic referred from https://medium.com/@akshaymohite/luhns-algorithm-to-validate-credit-debit-card-numbers-1952e6c7a9d0
  def luhn_algo_valid
    number.reverse.split("").each_slice(2) do |x,y|
	  sum += x.to_i + (2*y.to_i).divmod(10).sum
    end
  end

  private
  def raw_addends
    num.to_s.reverse.chars.map.with_index do |digit, index|
      index.odd? ? digit.to_i * 2 : digit.to_i
    end.reverse
  end
end
