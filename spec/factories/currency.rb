require 'faker'

FactoryBot.define do
  factory :currency do
    worth { Faker::Number.decimal(l_digits: 1, r_digits: 4) }
    currency_code { Currency.currency_codes.keys.sample }
    day
  end
end
