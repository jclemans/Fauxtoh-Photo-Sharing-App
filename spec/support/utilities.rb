require 'spec_helper'

def create_user_and_sign_in
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
  user = FactoryGirl.create :user
  visit login_path
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log in'
end

def upload_photo
  create_user_and_sign_in
  click_link 'user@email.com'
  click_link 'Upload Photo'
  attach_file 'photo[photo]', File.join(Rails.root, 'spec', 'fixtures', 'files', 'test_photo.jpg')
  click_button 'Submit'
end
