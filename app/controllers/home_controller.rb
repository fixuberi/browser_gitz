class HomeController < ApplicationController

  def index
    @repository_facade = RepositoryFacade.new('trailblazer/trailblazer', client)
  end

end
