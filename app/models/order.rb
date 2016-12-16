class Order < ActiveRecord::Base

	belongs_to :customer
	belongs_to :product
<<<<<<< HEAD
	has_many :lineitems
	
	def add_lineitems_from_cart(cart)
		cart.lineitems.each do |item|
			item.cart_id = nil
			lineitems << item
		end
	end
=======
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
	

end
