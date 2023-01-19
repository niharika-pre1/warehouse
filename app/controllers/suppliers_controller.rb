class SuppliersController < ApplicationController
  def index
    @warehouse_item = WarehouseItem.find(params[:warehouse_item_id])
    @suppliers =@warehouse_item.suppliers
  end
  def create
    @warehouse_item = WarehouseItem.find(params[:warehouse_item_id])
    @supplier = @warehouse_item.suppliers.create(supplier_params)
    redirect_to supplier_path(@supplier)
  end

  def show
    @supplier = Supplier.find(params[:id])
  end
 
  private
    def supplier_params
      params.require(:supplier).permit(:email)
    end
end

