class UsersController < ApplicationController
  def show
    @user_items = []
    current_user.user_items.each do |user_item|
      @user_items.push(Item.find(user_item.item_id))
    end
    # binding.pry
    if params[:sort_by] != nil
      current_user.avatar = nil
      # binding.pry
    end
  end
end
