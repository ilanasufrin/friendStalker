class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]
  skip_before_action :authentication_required, :only => [:index]

  def show
  end

  def edit
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
  
end