class Memo < ApplicationRecord
  belongs_to :category


  validates :title, {presence:true}
  validates :body, {presence:true, length: {maximum: 50}}

end
