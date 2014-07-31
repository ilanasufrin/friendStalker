class UsersController < ApplicationController
  skip_before_action :authentication_required, :only => [:index]

  private
    def set_user
      @user = User.find(params[:id])
    end
end