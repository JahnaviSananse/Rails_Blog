class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 2, maximum: 40 }
  validates :description, presence: true, length: { minimum: 5, maximum: 100 }
  belongs_to :user
end
