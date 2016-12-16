class AddAttachmentToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :attachment, :string
  end
end
