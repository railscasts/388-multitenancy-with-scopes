class Post < ActiveRecord::Base
  attr_accessible :name, :content
  belongs_to :topic

  default_scope { where(tenant_id: Tenant.current_id) }
end
