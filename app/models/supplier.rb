class Supplier < ActiveRecord::Base

    has_many :products
    belongs_to :area
	
	
	
	
	validates :supplier_name, presence: true
   

end
