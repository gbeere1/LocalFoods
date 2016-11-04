class Product < ActiveRecord::Base

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
end
