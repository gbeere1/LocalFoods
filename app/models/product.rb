class Product < ActiveRecord::Base
<<<<<<< HEAD
	
	has_many :lineitems
	mount_uploader :attachment, AttachmentUploader
=======

>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
    belongs_to :supplier
	has_many :comments, :dependent => :destroy
	has_many :orders
	validates :product_name, presence: true
    validates :price, presence: true
	validates :price, numericality: true
    validates :quantity, presence: true
	validates :quantity, numericality: true

    def average_stars
		comments.average(:stars)
	end
<<<<<<< HEAD
	
	def self.search(query)
		where("product_name LIKE?","%#{query}%")
	end
=======
>>>>>>> 1e77c868ae87334476b10fa5e04ff50fd0a71ed4
end
