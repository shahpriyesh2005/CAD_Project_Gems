require 'minitest/autorun'
require 'passwordValidator'

class PasswordComplexityTest < Minitest::Test
  # Test if a password complexity validator returns correct result
  def test_negative_password_complexity
	assert_equal(true, PasswordComplexity.new("12345", 3).valid?)
  end
  
  def test_positive_password_complexity
	assert_equal(true, PasswordComplexity.new("12345@ABCdef", 3).valid?)
  end
end
