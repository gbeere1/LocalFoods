class Product < ActiveRecord::Base
	
	has_many :lineitems
	mount_uploader :attachment, AttachmentUploader
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
	
	def self.search(query)
		where("product_name LIKE?","%#{query}%")
	end
end
