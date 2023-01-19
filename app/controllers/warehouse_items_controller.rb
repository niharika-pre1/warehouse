class WarehouseItemsController < ApplicationController
  def index
    @warehouse_items = WarehouseItem.all
  end

  def new
    @warehouse_item = WarehouseItem.new
  end

  def create
    @warehouse_item = WarehouseItem.new(warehouse_params)
    if @warehouse_item.save
     redirect_to @warehouse_item
    else
    render 'new'
    end
  end

  def show
    @warehouse_item = WarehouseItem.find(params[:id])
  end

  def total_price
    price * quantity
  end

private
  def warehouse_params
    params.require(:warehouse_item).permit(:name)
  end
end