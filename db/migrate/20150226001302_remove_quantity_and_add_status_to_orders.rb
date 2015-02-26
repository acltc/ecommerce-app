class RemoveQuantityAndAddStatusToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :status, :string
    remove_column :orders, :quantity
    remove_column :orders, :product_id
  end
end
