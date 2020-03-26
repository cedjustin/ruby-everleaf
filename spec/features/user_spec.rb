require 'rails_helper'

RSpec.feature "Users", type: :feature do

  before do
    User.create!(email: 'cedrick686@gmail.com', username: 'cedric', password: '123456', password_confirmation: '123456', admin: 'true')
    User.create!(email: 'cedro89@gmail.com', username: 'ced', password: '123456', password_confirmation: '123456', admin: 'false')
  end

  scenario "Test general user login" do

    visit new_session_path
    fill_in "session[username]", with: "ced"
    fill_in "session[password]", with: "123456"
    click_on 'login'
    expect(page).to have_content "logged in"

  end

  scenario "Test admin user login" do

    visit new_session_path
    fill_in "session[username]", with: "cedric"
    fill_in "session[password]", with: "123456"
    click_on 'login'
    expect(page).to have_content "welcome admin"

  end

  describe "admin tasks" do

    before do
      visit new_session_path
      fill_in "session[username]", with: "cedric"
      fill_in "session[password]", with: "123456"
      click_on 'login'
    end

    scenario "Test see users list" do
      visit admin_users_path
      expect(page).to have_content "cedric"
      expect(page).to have_content "ced"
    end

    scenario "Test edit user's role" do
      user = User.create!(email: 'cedro899@gmail.com', username: 'cedu', password: '123456', password_confirmation: '123456', admin: 'false')
      visit edit_admin_user_path(user.id)
      select "administrator", from: "user[admin]"
      click_on '更新する'
      expect(page).to have_content "User was successfully updated."
    end

    scenario "Test delete user" do
      visit admin_users_path
      users = page.all('tr')
      users[1].click_on "Destroy"
      expect(page).to have_content "User was successfully destroyed."
    end

    scenario "Test that you can not delete the only admin" do
      visit admin_users_path
      users = page.all('tr')
      users[2].click_on "Destroy"
      expect(page).to have_content "can not delete last admin"
    end

  end

end
