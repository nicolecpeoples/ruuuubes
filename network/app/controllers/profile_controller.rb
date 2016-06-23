class ProfileController < ApplicationController

  def index
  	@user = current_user
  	@connections = current_user.connections
  end
  
end
