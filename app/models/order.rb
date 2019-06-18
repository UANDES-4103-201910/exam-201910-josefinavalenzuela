class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :biling_address, :class_name => 'Address', :foreign_key => 'biling_address_id'
  belongs_to :shipping_address, :class_name => 'Address', :foreign_key => 'shipping_address_id'

  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :biling_address, presence: true
  validates :shipping_address, presence: true
end
