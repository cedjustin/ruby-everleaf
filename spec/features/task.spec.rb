require 'rails_helper'
RSpec.feature "Task management function", type: :feature do
    
  scenario "Test task list" do
    Task.all
  end

  scenario "Test task creation" do
    Task.create!(start_date: 'test_task_01', end_date: '',status: 'pending')
    Task.create!(start_date: 'test_task_01', end_date: '',status: 'done')
    visit tasks_path
    expect(page).to have_content 'pending'
    expect(page).to have_content 'done'
  end

  scenario "Test of task details" do
    task1=Task.first  
  end

end