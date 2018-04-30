class OrderItem < ActiveRecord::Base
  # validates :quantity, :product_id, :presence => true
  # validates :status, :user_id, :total_price, :presence => true
  belongs_to :product
  belongs_to :order
end

# create_table :order_items do |t|
#   t.column :quantity, :integer
#   t.column :product_id, :bigint
#   t.column :order_id, :bigint
