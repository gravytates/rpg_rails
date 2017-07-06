class UserItemsController < ApplicationController

  def create
    @user = current_user
    @item = @user.user_items.new(item_params)
    @user.user_items.push(@item)
    @user.save
    # binding.pry
    session[:user_id] = @user.id
    redirect_to user_path(current_user)
  end

  private

  def item_params
    params.require(:user_item).permit(:name, :user_attack_increase, :one_time_attack, :item_id)
  end
end
