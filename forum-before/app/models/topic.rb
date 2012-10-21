class Topic < ActiveRecord::Base
  attr_accessible :name, :content
  belongs_to :user
  has_many :posts
end
