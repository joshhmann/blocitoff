require 'faker'
FactoryGirl.define do
  factory :item do
    name Faker::RickAndMorty.character
    user current_user
  end
end