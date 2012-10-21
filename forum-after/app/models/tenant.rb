class Tenant < ActiveRecord::Base
  attr_accessible :name, :subdomain
  
  def self.current_id=(id)
    Thread.current[:tenant_id] = id
  end
  
  def self.current_id
    Thread.current[:tenant_id]
  end
end
