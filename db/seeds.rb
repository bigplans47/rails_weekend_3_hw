# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table :products do |t|
#   t.column :price, :decimal
#   t.column :name, :string
#
#   create_table :order_items do |t|
#     t.column :quanity, :integer
#     t.column :product_id, :bigint
#     t.column :order_id, :bigint

10.times do |i|
  Product.create!(:name => Faker::Coffee.blend_name, :price => Faker::Number.decimal(2))
  # @product_id = Product.last.id
  # 3.times do |g|
  #   OrderItem.create!(:quanity => Faker::Number.between(1,15), :product_id => @product_id, :order_id => 1)
  # end
end
