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


def suppliersigned_in?
	if session[:supplier_id].nil?
	
		return
	else
		@suppliercurrent_supplier=Supplier.find_by_id(session[:supplier_id])
	end
end	

end
