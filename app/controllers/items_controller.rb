class ItemsController < ApplicationController
  
  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = current_user
    
    if @item.save
      
      flash[:notice] = "Item was saved successfully."
      redirect_to (current_user)
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :create
    end
  end
  
  def delete
  end

      

end
