class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 2, maximum: 40 }
  validates :description, presence: true, length: { minimum: 5, maximum: 100 }
end
