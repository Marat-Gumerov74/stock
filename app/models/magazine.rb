class Magazine < ApplicationRecord
  has_many :items
  validates :email, :name, presence: true
  validates :email, :name, uniqueness: true
end
