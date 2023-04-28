class Player < ApplicationRecord
  # Associations
  belongs_to :team
  belongs_to :user

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :nationality, presence: true
end
