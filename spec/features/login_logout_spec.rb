require 'spec_helper'

feature "Log In and Out", :type => :feature do
  scenario "lets a user log in and out of their account" do
    create_user_and_sign_in
    expect(page).to have_content 'Logged in as'
    click_link 'Log Out'
    expect(page).to have_content 'Log In'
  end
end
