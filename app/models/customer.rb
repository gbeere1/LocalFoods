class Customer < ActiveRecord::Base
<<<<<<< HEAD
	has_secure_password
	has_many :comments
	has_many :orders
	
	mount_uploader :attachment, AttachmentUploader
	
	geocoded_by :address
	after_validation :geocode, :if=>:address_changed?
	
	geocoded_by :location
		after_validation :geocode, :if => :address_changed? || :area_changed?
		
		def location
			[address,area].compact.join(',')
		end
	
	
=======
    has_secure_password
	has_many :comments
	has_many :orders
	
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
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
<<<<<<< HEAD
	 
	 
	
=======
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
    
	
end
