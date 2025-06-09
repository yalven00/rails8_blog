class Post < ApplicationRecord

has_many :comments

has_rich_text :body

broadcasts_to :post

end
