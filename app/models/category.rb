class Category < ApplicationRecord
  has_many :actlogs
  validates :name, presence: true
end
