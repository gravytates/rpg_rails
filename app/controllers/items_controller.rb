class ItemsController < ApplicationController
  before_action :only => [:new, :edit] do
    redirect_to new_user_session_path unless current_user && current_user.admin
  end

  def new
    @item = Item.new
  end

  def index
    @items = Item.all
    @user_item = current_user.user_items.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to "/items"
    else
      flash[:alert] = "There was a problem creating the item"
      render :new
    end
  end
#
  def edit
    @item = Item.find(params[:id])
  end

  def update
    @user = current_user
    @item = Item.find(params[:id])
    @item.update(item_params)
    if @item.save
      redirect_to "/users/#{@user.id}"
    else
      flash[:alert] = "There was a problem updating the item"
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "Product successfully removed!"
      redirect_to items_path
    end
  end

private

  def item_params
    params.require(:item).permit(:name, :user_attack_increase, :one_time_attack)
  end
end
