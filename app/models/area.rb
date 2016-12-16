class Area < ActiveRecord::Base
 
    has_many :suppliers
	
	geocoded_by :area_name
	after_validation :geocode
	
	
	
	validates :area_name, presence: true
    validates :area_name, uniqueness: true 
    validates :postcode, presence: true
	validates :postcode, numericality: true
end
