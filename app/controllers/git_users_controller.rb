class GitUsersController < ApplicationController
  def show
    @git_user_facade = GitUserFacade.new params[:name], client
  end

end
