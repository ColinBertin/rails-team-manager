class Sport < ApplicationRecord
  # Associations
  has_many :teams

  # Validations
  validates :name, presence: true, uniqueness: true
end
