class Player < ApplicationRecord
  # Associations
  belongs_to :team

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :number
  validates :age, presence: true
  validates :nationality, presence: true
  validates :position
end
