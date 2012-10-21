class AddTenantToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :tenant_id, :integer
    add_index :topics, :tenant_id
  end
end
