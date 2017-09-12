class UsersController < ApplicationController
  def new
  end
  
  def show
    @user = User.find(params[:id])
    @items = Item.all
  end
  
end
