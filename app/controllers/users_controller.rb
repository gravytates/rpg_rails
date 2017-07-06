class UsersController < ApplicationController
  def show
    # binding.pry
    @user_items = current_user.user_items
    if params[:sort_by] != nil
      current_user.avatar = nil
    end
  end
end
