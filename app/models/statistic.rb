class Statistic < ApplicationRecord
  #validations

  validates :name, presence: true
  validates :amount, numericality: { only_integer: true }

  scope :showed, -> { where(show: true) }
end
