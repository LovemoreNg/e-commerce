class CustomersController < ApplicationController
<<<<<<< HEAD
=======

     
>>>>>>> e1e2b6d8778e1990926c3b4e5b52db036964e8e0
  def index
  end

  def show
<<<<<<< HEAD
	@customer=Customer.find(params[:id])
=======
   @customer = Customer.find(params[:id])
>>>>>>> e1e2b6d8778e1990926c3b4e5b52db036964e8e0
  end

  def new
  end

  def edit
  end

  def create
<<<<<<< HEAD
  	@new_customer=Customer.create(customer_params)
  	if@new_customer.errors.blank?
  		redirect_to @new_customer
  	else
  		redirect_to "customers/new"
  	end
  end

  private 
  def customer_params
	params.require(:customer).permit(:name, :address, :voided)
  end
=======
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
>>>>>>> e1e2b6d8778e1990926c3b4e5b52db036964e8e0
end
