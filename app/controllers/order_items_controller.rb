class OrderItemsController < ApplicationController
  def create
    p 'sup'
    @order = current_order
    p 'the order', @order
    @item = @order.order_items.new(item_params)
    p 'my item', @item
    # @item.save
    # p 'my custom save', @item.save, @item
    @order.save
    p 'order save', @order.save
    session[:order_id] = @order.id
    p session[:order_id]
    redirect_to products_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end

end
