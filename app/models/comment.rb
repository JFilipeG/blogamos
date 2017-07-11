class Comment < ApplicationRecord
  belongs_to :post

  validates :text, :author, presence: true
end
