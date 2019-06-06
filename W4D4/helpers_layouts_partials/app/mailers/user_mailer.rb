class UserMailer < ApplicationMailer
  default from: 'kennethichoi@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://www.99cats.com'
    mail(to: user.username, subject: 'Welcome to 99 Cats!')
  end
end
