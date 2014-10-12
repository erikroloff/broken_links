# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    link "MyString"
    post_information "MyText"
    user nil
    category nil
  end
end
