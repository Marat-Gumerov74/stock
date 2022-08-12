class Item < ApplicationRecord
  belongs_to :magazine
  validates :name, :magazine, presence: true
end
