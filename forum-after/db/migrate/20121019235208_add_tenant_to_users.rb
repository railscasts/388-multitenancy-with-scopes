class AddTenantToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tenant_id, :integer
    add_index :users, :tenant_id
  end
end
