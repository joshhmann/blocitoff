require 'faker'
FactoryGirl.define do
  factory :item do
    name Faker::RickAndMorty.quote
    user current_user
  end
end