class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]
  skip_before_action :authentication_required, :only => [:index]
  

  # returns Geocoder::Result object

  def update
    @user = User.find(params[:id])
    if @user.update(update_user_loc_and_phone)
      redirect_to(@user)
    else
      render :edit
    end
     # @user.location = Geocoder.address(remote_ip).split(', ')
     # @user.save
  end

  def show
    # raise params.inspect
    @user = User.find(params[:id])
  end

  def edit
    @user= User.find(params[:id])
  end

  def create
    location = Geocoder.address(remote_ip).split(', ').first
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def update_user_loc_and_phone
    params.require(:user).permit([:location, :phone])
  end
     
end

