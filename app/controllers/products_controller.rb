class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  # def show
  #   @product = Product.find(params[:id])
  # end
  #
  # def new
  #   @product = Product.new
  # end
  #
  # def create
  #   @product = Product.new(product_params)
  #   if @product.save
  #     flash[:notice] = "Product successfully added!"
  #     redirect_to products_path
  #   else
  #     flash[:alert] = "Product not added, see error notes below"
  #     render :new
  #   end
  # end
  #
  # def edit
  #   @product = Product.find(params[:id])
  # end
  #
  # def update
  #   @product = Product.find(params[:id])
  #   if @product.update(product_params)
  #     flash[:notice] = "Product successfully updated"
  #     redirect_to products_path
  #   else
  #     flash[:alert] = "Product not updated, see error notes below"
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @product = Product.find(params[:id])
  #   @product.destroy
  #   flash[:notice] = "Product successfully removed"
  #   redirect_to products_path
  # end

  private
  def product_params
    params.require(:product).permit(:name, :price)
  end

end
