class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
def creation_confirmation(user)
    @user = user

    mail(
      to:       @user.email,
      subject:  "welcome!"
    )
  end
end
