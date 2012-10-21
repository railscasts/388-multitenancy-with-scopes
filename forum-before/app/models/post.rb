class Post < ActiveRecord::Base
  attr_accessible :name, :content
  belongs_to :topic
end
