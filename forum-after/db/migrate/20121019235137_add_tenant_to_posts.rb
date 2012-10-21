class AddTenantToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tenant_id, :integer
    add_index :posts, :tenant_id
  end
end
