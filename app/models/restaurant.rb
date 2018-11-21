class Restaurant < ApplicationRecord
  validates :address, presence: true
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews, dependent: :delete_all
end
