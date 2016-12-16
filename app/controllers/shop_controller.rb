class ShopController < ApplicationController

	def index
		@products = Product.order("product_name asc").all
	end

	
end

