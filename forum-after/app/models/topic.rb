class Topic < ActiveRecord::Base
  attr_accessible :name, :content
  belongs_to :user
  has_many :posts
  
  default_scope { where(tenant_id: Tenant.current_id) }
end
