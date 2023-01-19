class OrdersController < ApplicationController
 def index
 @supplier = Supplier.find(params[:supplier_id])
 @orders =@supplier.orders
 end

 def create
  @supplier = Supplier.find(params[:supplier_id])
  @order = @supplier.orders.create(order_params)
  redirect_to order_path(@order)
 end

 def show
  @order = Order.find(params[:id]) 
 end 

 def destroy
    @order = Order.find(params[:id])
    @order.destroy
 
    redirect_to order_path
  end

private
  def order_params
    params.require(:order).permit(:order_no)
  end

end
