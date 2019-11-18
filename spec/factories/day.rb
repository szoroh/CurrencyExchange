require 'faker'

FactoryBot.define do
  factory :day do
    date { Faker::Date.in_date_period.strftime }
  end
end
