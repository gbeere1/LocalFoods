json.extract! order, :id, :customer_id, :order_price, :delivery_date, :created_at, :updated_at
json.url order_url(order, format: :json)