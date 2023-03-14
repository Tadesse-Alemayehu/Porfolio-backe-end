class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_author.subject
  #
  def send_author
    @user = params[:user]
    @subject = "New message dropped by #{@user.full_name}"
    mail(to: email_address_with_name(@author[:email], "Tadesse.dev"), subject: @subject)
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_user.subject
  #
  def send_user
    @user = params[:user]
    @subject = "Good news! Your message has been sent..."
    mail(to: email_address_with_name(@user.email, "Tadesse.dev"), subject: @subject)
  end
end
