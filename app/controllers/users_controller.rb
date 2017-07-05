class UsersController < ApplicationController

  def show
    if params[:sort_by] != nil

      current_user.avatar = nil
    end
  end
end
