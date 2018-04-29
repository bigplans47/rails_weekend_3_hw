class OrderItem < ActiveRecord::Base
  validates :status, :user_id, :total_price, :presence => true
  belongs_to :product
  belongs_to :order
end
