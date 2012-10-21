class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  has_secure_password
  validates_uniqueness_of :email, scope: :tenant_id

  has_many :topics

  default_scope { where(tenant_id: Tenant.current_id) }
end
