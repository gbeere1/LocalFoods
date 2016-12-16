json.extract! customer, :id, :customer_name, :address, :area, :phone, :email, :password_digest, :created_at, :updated_at
json.url customer_url(customer, format: :json)