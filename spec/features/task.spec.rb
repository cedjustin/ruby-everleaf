require 'rails_helper'

RSpec.feature "Task management function", type: :feature do

  background do
    FactoryBot.create(:task)
    FactoryBot.create(:second_task)
    User.create!(username: 'cedjustin',  password: '123456', password_confirmation: "123456")
    visit new_session_path
    fill_in "session[username]", with: "cedjustin"
    fill_in "session[password]", with: "123456"
    click_on 'login'
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
    task = Task.create!(start_date: '1/1/2020', end_date: '1/2/2020', status:"pending", priority: "1")
    visit task_path(task.id)
    expect(page).to have_content "pending"
  end

  scenario "Test whether tasks are arranged in descending order of creation date" do
    visit tasks_path
    tasks = Task.all
    expect(tasks.order("created_at desc").map(&:status)).to eq [ "done", "pending"]
  end

  scenario "Test whether tasks are arranged in descending order of end_date(deadline)" do
    visit tasks_path
    tasks = Task.all
    expect(tasks.order(end_date: :desc).map(&:end_date)).to eq [ "2020-03-01 00:00:00.000000000 +0900", "2020-02-01 00:00:00.000000000 +0900"]
  end

  scenario "Test search by status" do
    visit tasks_path
    search = Task.ransack(status_cont: "done")
    tasks = search.result.order(created_at: :asc)
    expect(page).to have_content "done"
  end

  scenario "Test sort by priority" do
    visit tasks_path
    tasks = Task.all
    expect(tasks.order(priority: :asc).map(&:priority)).to eq [ 1, 2]
  end

end