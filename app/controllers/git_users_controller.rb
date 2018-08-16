class GitUsersController < ApplicationController
  def show
    @user = client.user params[:name]
  end

end
