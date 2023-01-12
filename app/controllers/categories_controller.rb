class CategoriesController < ApplicationController

  def index
  
  end
  def create
    @warehouse = Warehouse.find(params[:warehouse_id])
    @category = @warehouse.categories.create(category_params)
    redirect_to warehouse_path(@warehouse)
  end
  
  def destroy
    @warehouse = Warehouse.find(params[:warehouse_id])
    @category = @warehouse.categories.find(params[:id])
    @category.destroy
    redirect_to categories_index_path(@category)
  end
 
  private
    def category_params
      params.require(:category).permit(:name)
    end
end


