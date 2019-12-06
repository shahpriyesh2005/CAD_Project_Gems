require 'minitest/autorun'

class SendCustomMailTest < Minitest::Test  
  def setup
	@user_email = "cad.event.genie@gmail.com"
	@message = "ORDER"
  end
  
  def test_user_email
	assert( @user_email != nil, "User Email is null" )
  end
  
  def test_message
	assert( @message != nil, "Message is null" )
  end

end
