class Team < ApplicationRecord
  # Associations
  has_many :players, dependent: :destroy
  belongs_to :sport
  belongs_to :user

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :gender, presence: true
  validates :location, presence: true
end
