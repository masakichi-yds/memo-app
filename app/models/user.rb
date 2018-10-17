class User < ApplicationRecord
  has_secure_password

  has_many :memos

  validates :email, {presence: true}


end
