class ReposController < ApplicationController

  def show
    @repository = client.repo params[:full_name]
  end

  def index
    @repos_facade = ReposFacade.new(params, client)
  end

end

