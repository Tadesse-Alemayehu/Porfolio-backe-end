require "test_helper"

class MessageMailerTest < ActionMailer::TestCase
  test "send_author" do
    mail = MessageMailer.send_author
    assert_equal "Send author", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "send_user" do
    mail = MessageMailer.send_user
    assert_equal "Send user", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
