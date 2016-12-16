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
  
  
  def suppliernew
  
  end
  
  def suppliercreate
	
	supplier = Supplier.find_by_supplier_name(params[:supplier_name])
	
	if supplier and supplier.authenticate(params[:password])
		session[:supplier_id] = supplier.id
		redirect_to session[:return_to] || root_path
	else
		redirect_to supplierlogin_path, alert: "Invalid supplier name/password combination"
  
    end  
  end
  
  
  def supplierdestroy
	session[:supplier_id] = nil
	redirect_to root_path, notice: "Logged Out"
  end
  
  
  
end
