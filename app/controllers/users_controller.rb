class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  skip_before_action :authentication_required, :only => [:index]

  def show
    @friends = Friend.all
    @user = User.find(params[:id])
  end

  
  private
    def set_user
      @user = User.find(params[:id])
    end
end
