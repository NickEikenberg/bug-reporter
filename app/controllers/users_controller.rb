class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])

    @assigned = Bug.select { |bug| bug.assigned_to == @user.username}
  end

end
