module ApplicationHelper

def signed_in?
	if session[:customer_id].nil?
		return
	else
	  @current_customer = Customer.find_by_id(session[:customer_id])
	end
end

def euro(amount)
	number_to_currency(amount,:unit => '€')
end


<<<<<<< HEAD
def suppliersigned_in?
	if session[:supplier_id].nil?
	
		return
	else
		@suppliercurrent_supplier=Supplier.find_by_id(session[:supplier_id])
	end
end	

=======
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
end
