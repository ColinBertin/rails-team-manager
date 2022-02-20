class Team < ApplicationRecord
  # Associations
  has_many :players
  belongs_to :sport

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :gender, presence: true
  validates :location, presence: true
end
