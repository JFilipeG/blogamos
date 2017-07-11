class Post < ApplicationRecord
  has_many :comments

  validates :text, :author, presence: true
end
