class ReposController < ApplicationController

  def show
    @repository_facade = RepositoryFacade.new(params[:full_name], client)
  end

  def index
    @repos_facade = ReposFacade.new(params, client)
  end

end

