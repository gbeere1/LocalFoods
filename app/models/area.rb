class Area < ActiveRecord::Base
 
    has_many :suppliers
	
	validates :area_name, presence: true
    validates :area_name, uniqueness: true 
    validates :postcode, presence: true
	validates :postcode, numericality: true
end
