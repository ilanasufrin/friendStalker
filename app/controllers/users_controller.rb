class UsersController < ApplicationController
  skip_before_action :authentication_required, :only => [:index]
  
end