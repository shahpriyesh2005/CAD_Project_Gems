require 'userMailer'

class SendCustomMail < UserMailer
  attr_reader :user_email, :action_type

  def initialize(user_email, message)
	@user_email = user_email
	@message = message
  end

  def process
	unless @user_email.nil? && @message.nil?
		UserMailer.new.send_email(@user_email, @message)
	end
  end

end
