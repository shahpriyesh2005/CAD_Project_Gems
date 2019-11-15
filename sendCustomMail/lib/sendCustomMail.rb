require 'userMailer'

class SendCustomMail < UserMailer
  attr_reader :user_email, :action_type

  def initialize(user_email, action_type)
	@user_email = user_email
    @action_type = action_type
  end

  def process
    if @action_type == "PROFILE"
		@message = "Profile updated successfully."
	end
	
	if @action_type == "ORDER"
		@message = "Order placed successfully."
	end
	
	UserMailer.new.send_email(@user_email, @message)
  end

end
