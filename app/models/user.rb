class User < ApplicationRecord
  has_many :memos

  validates :email, {presence: true}
  validates :password, {presence: true}

end
