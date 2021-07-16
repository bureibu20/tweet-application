class Post < ApplicationRecord
  validates :content, presence: true
  validates :name, presence: true
  validates :content, presence: true, length: { in: 1..140 }
  validates :content, length: { maximum: 140 }
end
