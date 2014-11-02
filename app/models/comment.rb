class Comment < ActiveRecord::Base
  validates_presence_of :post, :content
  belongs_to :post
  belongs_to :user
  has_ancestry
end
