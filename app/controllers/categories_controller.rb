class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render 'categories/index'
  end
   
  def show
    @warehouse_item = WarehouseItem.find(params[:warehouse_item_id])
    @category = @warehouse_item.categories.find(params[:id])
  end

  def create
    @warehouse_item = WarehouseItem.find(params[:warehouse_item_id])
    @category = @warehouse_item.categories.create(category_params)
    redirect_to  warehouse_item_categories_path
  end
  
  def destroy
    @warehouse_item = WarehouseItem.find(params[:warehouse_item_id])
    @category = @warehouse_item.categories.find(params[:id])
    @category.destroy
    redirect_to categories_index_path(@category)
  end
 
  private
    def category_params
      params.require(:category).permit(:name)
    end
end


