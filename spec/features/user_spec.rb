require 'rails_helper'

RSpec.feature "Users", type: :feature do

  before do
    visit new_user_path
    fill_in "user[email]", with: "title23@gmail.com"
    fill_in "user[username]", with: 'cedjustin'
    fill_in "user[password]", with: '123456'
    fill_in "user[password_confirmation]", with: '123456'
    click_on '登録する'
    expect(page).to have_content 'User was successfully created'
  end

  scenario "User login" do

    visit new_session_path
    fill_in "session[username]", with: "title23"
    fill_in "session[password]", with: "123456"
    click_on 'login'
    expect(page).to have_content "logged in"

  end

end
