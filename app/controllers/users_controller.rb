class UsersController < ApplicationController
  skip_before_action :authentication_required, :only => [:index]
  before_action :set_user, :only => :edit

  def edit
  end

  def update
  @user = User.find(params[:id])
  if @user.update(update_user_location)
    redirect_to(@user)
  else
    render :edit
  end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def update_user_location
      params.require(:user).permit([:location])
    end

end