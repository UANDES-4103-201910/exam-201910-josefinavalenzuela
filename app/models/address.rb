class Address < ApplicationRecord
	belongs_to :user
	has_many :orders

	validates :address_line_1, presence: true
	validates :city, presence: true
	validates :country, presence: true
	validates :phone, presence: true
	validates :zip_code, presence: true
end
