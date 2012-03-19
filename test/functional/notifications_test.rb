require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "new_user" do
    mail = Notifications.new_user
    assert_equal "New user", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
