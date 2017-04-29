class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :product_price
      t.text :product_description
      t.integer :product_quantity
      t.integer :product_avail_quantity
      t.integer :product_sell_price
      t.timestamps
    end
  end
end
