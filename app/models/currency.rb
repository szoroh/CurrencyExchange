class Currency < ApplicationRecord
  belongs_to :day

  enum currency_code: [:usd, :eur]

  validates :worth, presence: true, numericality: true
  validates :currency_code, presence: true
end
