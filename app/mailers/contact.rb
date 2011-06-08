class Contact < ActionMailer::Base
  include Resque::Mailer
  
  default from: "from@example.com"

  def welcome_maguila(email)
    @url  = "http://example.com/login"
    mail(:to => email, :subject => "Welcome Maguila")
  end
end
