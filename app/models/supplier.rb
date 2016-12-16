class Supplier < ActiveRecord::Base
<<<<<<< HEAD
	
	
	has_secure_password
    has_many :products
    belongs_to :area
	mount_uploader :attachment, AttachmentUploader
=======

    has_many :products
    belongs_to :area
	
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
	
	
	
	validates :supplier_name, presence: true
   

end
