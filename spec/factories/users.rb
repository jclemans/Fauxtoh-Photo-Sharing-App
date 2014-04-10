# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "user@email.com"
    password "testpassword"
    password_confirmation "testpassword"
  end
end
