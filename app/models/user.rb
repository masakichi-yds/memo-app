class User < ApplicationRecord
  has_secure_password

  has_many :memos

  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

end
