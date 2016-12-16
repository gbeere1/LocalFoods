class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :supplier_name
      t.integer :area_id
      t.string :password_digest
      t.string :image

      t.timestamps null: false
    end
  end
end
