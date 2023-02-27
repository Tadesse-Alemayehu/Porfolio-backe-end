class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_author.subject
  #
  def send_author
    @subject = "New message from new user"
    # p "author is defined as #{author}"
    mail(to: @author[:email], subject: @subject)
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.send_user.subject
  #
  def send_user
    @subject = "Thank you for your message"
    p " sending email to user#{params}"
    mail(to: params[:user][:email], subject: @subject)
  end
end
