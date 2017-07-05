class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @user = current_user
    @item = Item.new(item_params)
    if @item.save
      redirect_to "/user/#{@user.id}"
    else
      flash[:alert] = "There was a problem creating the item"
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @user = current_user
    @item = Item.update(item_params)
    if @item.save
      redirect_to "/user/#{@user.id}"
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
    params.require(:item).permit(:name, :user_attack_increase, :one_time_attack, :user_id)
  end
end
