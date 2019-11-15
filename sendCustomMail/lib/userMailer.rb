class UserMailer < ActionMailer::Base
  default from: 'cad.event.genie@gmail.com'
 
  def send_email(user_email, message)
    @user_email = user_email
    @message = message
    mail(to: @user_email, subject: "Alert from EventGenie", body: @message)
  end
end
