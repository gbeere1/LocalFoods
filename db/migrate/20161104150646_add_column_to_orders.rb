class AddColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :quantity, :integer,  :integer
  end
end
