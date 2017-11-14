class ItemsController < ApplicationController
  
  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = current_user
    
    if @item.save
      
      flash[:notice] = "Item was saved successfully."
      redirect_to current_user
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      redirect_to current_user
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    
    if @item.destroy
      flash[:notice] = "\"#{@item.name}\" has been done!"
    else 
      flash.now[:alert] = "There was an error marking this item complete."
    end
    
    respond_to do |format|
      format.html
      format.js
    end
  end
end
