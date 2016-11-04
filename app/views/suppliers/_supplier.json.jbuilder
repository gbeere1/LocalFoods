json.extract! supplier, :id, :supplier_name, :area_id, :password_digest, :image, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)