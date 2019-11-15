require 'minitest/autorun'
require 'sendCustomMail'

class SendCustomMailTest < Minitest::Test
  # Test if mail is sent or not
  def test_negative_send_email
	assert_equal(true, SendCustomMail.new("cad.event.genie@gmail.com", "TICKET").process.deliver)
  end
  
  def test_positive_send_email
	assert_equal(true, SendCustomMail.new("cad.event.genie@gmail.com", "ORDER").process.deliver)
  end
end
