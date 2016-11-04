class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :supplier_id
      t.decimal :price
      t.integer :quantity
      t.string :image

      t.timestamps null: false
    end
  end
end
