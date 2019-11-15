require 'minitest/autorun'
require 'luhnAlgorithmCheck'

class LuhnAlgorithmTest < Minitest::Test
  # Test if the Luhn's Algorithm returns correct result
  def test_negative_luhn_algorithm
	assert_equal(true, LuhnAlgorithm.new("1234567890123456").valid?)
  end
  
  def test_positive_luhn_algorithm
	assert_equal(true, LuhnAlgorithm.new("4012888888881881").valid?)
  end
end
