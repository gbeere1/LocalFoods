class Supplier < ActiveRecord::Base
	
	
	has_secure_password
    has_many :products
    belongs_to :area
	mount_uploader :attachment, AttachmentUploader
	
	
	
	validates :supplier_name, presence: true
   

end
