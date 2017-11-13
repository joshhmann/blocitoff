require 'faker'
FactoryGirl.define do
  factory :item do
    name Faker::Overwatch.quote
    user 
  end
end