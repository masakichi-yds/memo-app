class Memo < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, {presence:true}
  validates :body, {presence:true, length: {maximum: 50}}
  validates :user_id, {presence:true}
end
