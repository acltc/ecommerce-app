class AddSkuToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.string :sku
    end

    # add_column :products, :sku, :string
  end
end
