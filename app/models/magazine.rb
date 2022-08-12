class Magazine < ApplicationRecord
  validates :email, :name, presence: true
  validates :email, :name, uniqueness: true
end
