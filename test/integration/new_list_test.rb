require 'test_helper'

class NewListTest < ActionDispatch::IntegrationTest

  def testSuccess
    visit lists_path
    click_link "New List"
    fill_in "Name", with: "hooray"
    click_button "Create List"

    assert page.has_content?('hooray')
  end

  def testFail
    visit lists_path
    click_link "New List"
    fill_in "Name", with: ""
    click_button "Create List"

    assert page.has_content?('Create list')
    end
end
