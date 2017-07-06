class UsersController < ApplicationController
  def show
    # binding.pry
    @user_items = []

    current_user.user_items.each do |user_item|
      @user_items.push(Item.find(user_item.item_id))
    end
    if params[:sort_by] != nil
      current_user.avatar = nil
    end
  end
end
