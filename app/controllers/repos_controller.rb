class ReposController < ApplicationController

  def show

  end

  def index
    @repos_facade = ReposFacade.new(params, client)
  end

end

