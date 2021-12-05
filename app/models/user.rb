class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :username, presence: true, length: { in: 5..10 }
  validates :password, presence: true, length: { in: 8..15 } 
  validates :email, presence:true, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Wrong email format" }
  validates :name, presence: true, length: { maximum: 20 }
end
