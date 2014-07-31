class UsersController < ApplicationController
  before_action :set_user, only: :show
  skip_before_action :authentication_required, :only => [:index]
  before_action :set_user, :only => :edit

  def edit
  #  @user = User.update
  end


  private
    def set_user
      @user = User.find(params[:id])
    end
  
    
end
