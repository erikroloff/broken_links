class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :comments
  validates_formatting_of :link, using: :url
  default_scope { order('created_at DESC') }
end
