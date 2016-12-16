class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ApplicationHelper
  
	def authorise
		unless signed_in?
			store_location
<<<<<<< HEAD
			redirect_to login_path, :notice => "***** Please Log in.*****"
			
		end
	end
	
	def supplierauthorise
		unless suppliersigned_in?
			store_location
			redirect_to supplierlogin_path, :notice => "***** You must log in as a supplier to complete this action.*****"
=======
			redirect_to login_path, :notice => "Please Log In for full access."
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
			
		end
	end
	
	
	
	
	private 
		def store_location
			session[:return_to] = request.fullpath
		end
<<<<<<< HEAD
		
		def current_cart
			@cart = Cart.find(session[:cart_id])
			rescue ActiveRecord::RecordNotFound
				@cart = Cart.create
				session[:cart_id] = @cart.id
		
		end
=======
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
end
