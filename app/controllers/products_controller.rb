class ProductsController < ApplicationController
  def index
    @products =Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @supplier = Supplier.find(params[:supplier_id])
    @product = @supplier.products.create(product_params)
    redirect_to supplier_path(@supplier)
  end
   private
    def product_params
      params.require(:product).permit(:name, :price, :description, :quantity)
    end
end
