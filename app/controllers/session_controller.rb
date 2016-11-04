class SessionController < ApplicationController
  def new
  end

  def create
	customer = Customer.find_by_email(params[:email])
	if customer && customer.authenticate(params[:password])
					session[:customer_id] = customer.id #stores the id in the session
					redirect_to session[:return_to] || root_path #displays customer view
	else
		flash.now[:error] = "Invalid email/password combination."
		render 'new'    #shows login page again
	end
  end

  
  
  def destroy
		if signed_in?
		         session[:customer_id] = nil
		else
				flash[:notice] = "You need to login first!"
		end
		
	redirect_to login_path
  end
  
  
  
end
