class Area < ActiveRecord::Base
 
    has_many :suppliers
	
<<<<<<< HEAD
	geocoded_by :area_name
	after_validation :geocode
	
	
	
=======
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
	validates :area_name, presence: true
    validates :area_name, uniqueness: true 
    validates :postcode, presence: true
	validates :postcode, numericality: true
end
