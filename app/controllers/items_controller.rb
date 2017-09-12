class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    
  end

  def new
  end

  def edit
    
  end
  
  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = params[:post][:user]
    if @item.save
      flash[:notice] = "Item was saved successfully."
      redirect_to @item
    else
      flash.now[:alert] = "There was an error saving the post. Please try again later."
      render :new
    end
  end
end
