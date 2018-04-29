class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.column :quanity, :integer
      t.column :product_id, :bigint
      t.column :order_id, :bigint
    end
  end
end
