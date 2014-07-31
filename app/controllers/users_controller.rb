class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  skip_before_action :authentication_required, :only => [:index]

  def show
    # raise params.inspect
    @user = User.find(params[:id])
    @friends = @user.friends
  end

  
  private
    def set_user
      @user = User.find(params[:id])
    end
end
