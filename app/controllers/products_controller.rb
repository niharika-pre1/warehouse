class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def create
    @category = Category.find(params[:category_id])
    @product = @category.products.create(product_params)
    redirect_to category_path(@category)
  end
  
end
