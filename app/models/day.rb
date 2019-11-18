class Day < ApplicationRecord
  has_many :currencies, dependent: :destroy

  validates :date, presence: true
end
