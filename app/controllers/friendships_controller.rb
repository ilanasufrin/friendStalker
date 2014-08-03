class FriendshipsController < ApplicationController
  # before_action :set_user, only: [:show, :edit]
  # skip_before_action :authentication_required, :only => [:index]

  def update
    @friendship = Friendship.find(params[:id])
    @user = User.find(@friendship.user_id)
    if @friendship.update_attribute('stalking', params[ :stalking])
      flash.now[:notice] = "You have successfully updated your friend."
    else
      flash.now[:error] = "Could not save changes."
    end
  end

  def create
  end


  def new
  end

end
