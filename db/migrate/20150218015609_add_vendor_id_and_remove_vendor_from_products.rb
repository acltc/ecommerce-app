class AddVendorIdAndRemoveVendorFromProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.remove :brand
      t.integer :vendor_id
    end
  end
end
