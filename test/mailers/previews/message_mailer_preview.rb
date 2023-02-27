# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/send_author
  def send_author
    MessageMailer.send_author
  end

  # Preview this email at http://localhost:3000/rails/mailers/message_mailer/send_user
  def send_user
    MessageMailer.send_user
  end

end
