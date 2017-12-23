class OrderDetailsController < ApplicationController
  def index
  end

  def show
     @order_detail = Order_detail.find(params[:id])
  end

  def new
  end
  
  def create
   @new_order_detail = Order_detail.create(order_detail_params)
   if @new_order_detail.errors.blank?
      redirect_to @new_order_detail
   else
     redirect_to "order_details/new"
   end
  end
   private 
   def order_detail_params
     params.require(:order_detail).permit(:order_id,:item_id,:quantity)
   end
  def edit
  end
end
