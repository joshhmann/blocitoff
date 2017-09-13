class ItemsController < ApplicationController
  before_action :require_sign_in
  
  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = params[:item][:user]
    
    if @item.save
      
      flash[:notice] = "Item was saved successfully."
      redirect_to @user
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      render :create
    end
  end
  
  def delete
  end

      

end
