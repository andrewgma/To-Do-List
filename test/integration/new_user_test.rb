require 'test_helper'

class NewUserTest < ActionDispatch::IntegrationTest
  def test1
    visit users_path
    click_link "New User"
    fill_in "Email", with: "andma@wharton.upenn.edu"
    fill_in "Name", with: "Andrew Ma"
    click_button "Create User"
    
    error_message = "Password can't be blank"
    assert page.has_content?(error_message)
  end
  
  def test2
    visit users_path
    click_link "New User"
    fill_in "Email", with: "    @   .com"
    fill_in "Name", with: "Isabel Fan"
    fill_in "Password", with: "1234"
    click_button "Create User"
    
    error_message = "Email invalid"
    assert page.has_content?(error_message)
  end
end
