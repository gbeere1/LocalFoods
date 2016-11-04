class Customer < ActiveRecord::Base
    has_secure_password
	has_many :comments
	has_many :orders
	
	 validates_uniqueness_of :email
     validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
     validates :customer_name, presence: true
     validates :address, presence: true
	 validates :address, uniqueness: true
     validates :phone, presence: true
	 validates :phone, uniqueness: true
	 validates :phone, numericality: true
     validates :email, presence: true
	 validates :email, uniqueness: true
    
	
end
