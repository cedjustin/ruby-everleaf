require 'rails_helper'

RSpec.feature "Task management function", type: :feature do

  background do
    FactoryBot.create(:task)
    FactoryBot.create(:second_task)
  end
    
  scenario "Test task list" do
    Task.all
  end
  
  scenario "Test task creation" do
    visit tasks_path
    expect(page).to have_content 'pending'
    expect(page).to have_content 'done'
  end

  scenario "Test of task details" do
    task = Task.create!(start_date: '1/1/2020', end_date: '1/2/2020', status:"pending")
    visit task_path(task.id)
    expect(page).to have_content "pending"
  end

  scenario "Test whether tasks are arranged in descending order of creation date" do
    visit tasks_path
    tasks = Task.all
    expect(tasks.map(&:status)).to eq [ "done", "pending"]
  end

end