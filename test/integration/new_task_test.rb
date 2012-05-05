require 'test_helper'

class NewTaskTest < ActionDispatch::IntegrationTest

  test "taskTest1" do
    visit '/lists/new'
    fill_in 'list_name', with: 'dis be a list'
    click_button 'Create List'
    visit '/tasks'
    click_link "New"
    fill_in 'task_name', with: 'smile'
    fill_in 'description', with: 'be happy'
    select('dis be a list', :from => 'List')
    click_button 'Create Task'
    
    assert page.has_content?('Shit you need to get done.')
  end

end
