class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]
  skip_before_action :authentication_required, :only => [:index]
  

  # returns Geocoder::Result object

  def update
    @user = User.find(params[:id])
    if @user.update(update_user_location)
      redirect_to(@user)
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
    @user.location = @user.geocoded
  end

  def edit
  end


  private
    def set_user
      @user = User.find(params[:id])
    end


    def update_user_location
      params.require(:user).permit([:location])
    end

  
end

