class Order < ActiveRecord::Base

	belongs_to :customer
	belongs_to :product
	has_many :lineitems
	
	def add_lineitems_from_cart(cart)
		cart.lineitems.each do |item|
			item.cart_id = nil
			lineitems << item
		end
	end
	

end
