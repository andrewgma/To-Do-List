class Notifications < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_user.subject
  #
  def new_user(user)
    @greeting = "Hi"
    @user = user

    mail to: user.email, subject: "Welcome to our app."
  end
end
