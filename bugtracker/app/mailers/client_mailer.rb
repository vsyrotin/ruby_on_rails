class ClientMailer < ActionMailer::Base
  default from: "from@example.com"


  def send_email(email)
    @user = email
    mail(:to => email, :subject => "Welcome to My Awesome Site")
  end
end
