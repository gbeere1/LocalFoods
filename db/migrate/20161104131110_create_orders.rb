class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :order_price
      t.date :delivery_date

      t.timestamps null: false
    end
  end
end
