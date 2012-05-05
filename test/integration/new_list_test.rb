require 'test_helper'

class NewListTest < ActionDispatch::IntegrationTest

  test "listTest1" do
    visit '/lists'
    click_link "New"
    fill_in 'list_name', with: 'hooray'
    click_button 'Create List'
    
    assert page.has_content?('List')

    # assert page.has_content?('hooray')
  end

  test "listTest2" do
    visit list_path
    assert page.has_content?('Lists')
    click_link "New"
    fill_in 'list_name', with: ''
    click_button 'Create List'

    assert page.has_content?('Create list')
    end
end
