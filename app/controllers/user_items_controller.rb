class UserItemsController < ApplicationController

  def create
    @user = current_user
    @item = @user.user_items.new(item_params)
    # @user.user_items.push(@item)
    @user.save
    session[:user_id] = @user.id
    redirect_to items_path
  end

  private

  def item_params
    params.require(:user_item).permit(:name, :user_attack_increase, :one_time_attack, :item_id)
  end
end
