class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]
  skip_before_action :authentication_required, :only => [:index, :about]

  def update
    @user = User.find(params[:id])
    if @user.update(update_user_loc_and_phone)
      redirect_to(@user)
    else
      render :edit
    end
  end

  def show
  end

  def edit
  end

  def create
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def update_user_loc_and_phone
    params.require(:user).permit([:location, :phone])
  end
     
end