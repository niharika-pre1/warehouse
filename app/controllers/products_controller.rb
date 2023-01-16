class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'products/index'
  end
  
  
  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.create(product_params)
    redirect_to category_products_path
  end

  def show
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id])
  end

end

private
    def product_params
      params.require(:product).permit(:name, :price, :description, :quantity, :supplier_id )
    end
