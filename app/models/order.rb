class Order < ActiveRecord::Base
  # validates :status, :user_id, :total_price, :presence => true
  belongs_to :user
  has_many :order_items
end
