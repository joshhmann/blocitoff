require 'faker'
FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    password Faker::Internet.password
    name Faker::RickAndMorty.character
    
end