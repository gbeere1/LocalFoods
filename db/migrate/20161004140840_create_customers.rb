class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :address
      t.string :area
      t.integer :phone
      t.string :email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
