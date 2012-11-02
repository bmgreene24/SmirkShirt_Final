class AddUserIdToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :user_id, :integer
    Order.update_all ["user_id = ?", 1]
  end

  def self.down
    remove_column :orders, :user_id
  end
end
