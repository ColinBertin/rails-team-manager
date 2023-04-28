class Sport < ApplicationRecord
  # Associations
  has_many :teams, dependent: :destroy

  # Validations
  validates :name, presence: true, uniqueness: true
end
