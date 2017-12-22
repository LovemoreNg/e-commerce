class ItemsController < ApplicationController
  def index
  end

  def show
	@item=Item.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  	@new_item=Item.create(item_params)
  	if@new_item.errors.blank?
  		redirect_to @new_item
  	else
  		redirect_to "items/new"
  	end
  end

  private 
  def item_params
	params.require(:item).permit(:name, :price, :voided)
  end
end
