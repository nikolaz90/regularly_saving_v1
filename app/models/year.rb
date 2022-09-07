class Year < ApplicationRecord
  validates :year, presence: true
  belongs_to :user
end
