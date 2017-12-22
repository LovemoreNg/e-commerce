class CustomersController < ApplicationController

     
  def index
  end

  def show
   @customer = Customer.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
   @new_customer = Customer.create(customer_params)
   if @new_customer.errors.blank?
      redirect_to @new_customer
   else
     redirect_to "customers/new"
   end
  end
  private 
   def customer_params
     params.require(:customer).permit(:name,:address,:voided)
   end
end
