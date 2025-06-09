class Post < ApplicationRecord

has_many :comments

has_rich_text :body

broadcasts_to :post


validates :title, length: { minimum: 5 }, presence: true
validates :body, length: { maximum: 500 }, presence: true

end
