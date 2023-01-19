class ProductsController < ApplicationController
  def index
    @order = Order.find(params[:order_id])
    @products =@order.products
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @order = Order.find(params[:order_id])
    @product = @order.products.create(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
 
    redirect_to product_path
  end

  private
    def product_params
      params.require(:product).permit(:name, :price, :description, :quantity)
    end
end
