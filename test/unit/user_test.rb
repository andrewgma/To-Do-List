require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_user
    attrs = { 
      :email => "herp@derp.com",
      :name => "blah blah",
      :password => "123456789"
    }
    user = User.new(attrs)
    assert user.valid?
  end
end
