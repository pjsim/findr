# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    farm "MyString"
    server "MyString"
    photo_id "MyString"
    secret "MyString"
  end
end
