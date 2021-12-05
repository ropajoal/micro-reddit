class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { in: 5..30 }
  validates :link, presence: true, format: { with: /\A(https?:\/\/)?(www\.)?[\w]+\.[\w]+(\/[^\s\.]*)*\Z/i, message: "Wrong link format" }
end
