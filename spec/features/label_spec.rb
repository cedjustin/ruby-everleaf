require 'rails_helper'

RSpec.feature "Labels management functions", type: :feature do

  background do
    User.create!(email: 'cedro265@gmail.com', username: 'cedjustin',  password: '123456', password_confirmation: "123456", admin: true)
    visit new_session_path
    fill_in "session[username]", with: "cedjustin"
    fill_in "session[password]", with: "123456"
    click_on 'login'
  end

  scenario "create label" do

    visit new_label_path
    fill_in "label[label_type]", with: "label1"
    click_on '登録する'

    expect(page).to have_content('label1')

  end

  scenario "view label list" do

    visit new_label_path
    fill_in "label[label_type]", with: "label1"
    click_on '登録する'

    visit new_label_path
    fill_in "label[label_type]", with: "label2"
    click_on '登録する'

    visit labels_path

    expect(page).to have_content('label1')
    
  end

  scenario "view label details" do

    visit new_label_path
    fill_in "label[label_type]", with: "label1"
    click_on '登録する'
    visit labels_path
    click_on 'Show'
    expect(page).to have_content "label1"
    
  end

end
