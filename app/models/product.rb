class Product < ApplicationRecord
	has_many :orders
	

	validates :brand, presence: true
	validates :model, presence: true
	validates :price, presence: true
	validates :short_description, presence: true, length: { maximum: 100, message: "Your short description should have no more than 100 characters." }
	validates :long_description, presence: true
	validates :type_product, presence: true

	after_validation :price_positive
	after_validation :type_correct

	private def price_positive
		if price
			if price <= 0
				errors.add(:price, "The price must be positive and greater than zero")
			end
		end

  	end

  	private def type_correct
  		list = ['handset', 'pre-paid cards', 'subscription plans']
  		contador = 0

  		for i in list

  			if i == type_product
  				contador = 1
  			end
  		end

  		if contador == 0

			errors.add(:type, "The price must be hanset, pre-paid cards, subscription plans")
		end
	end
end
