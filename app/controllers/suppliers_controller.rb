class SuppliersController < ApplicationController
  def index
    @suppliers =Supplier.all
  end

  def create
    @warehouse_item = WarehouseItem.find(params[:warehouse_item_id])
    @supplier = @warehouse_item.suppliers.create(supplier_params)
    redirect_to warehouse_item_path(@warehouse_item)
  end

  def show
  end
 
  private
    def supplier_params
      params.require(:supplier).permit(:name, :mobile_no, :product_quantity, :product_price)
    end

end

