class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_author.subject
  #
  def send_author
    @user = Message.first
    @subject = "New message dropped by #{@user.full_name}"
    mail(to: @author[:email], subject: @subject)
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_user.subject
  #
  def send_user
    @subject = "Good news! Your message has been sent..."
    @user = Message.first
    mail(to: @user.email, subject: @subject)
  end
end
