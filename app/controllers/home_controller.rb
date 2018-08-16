class HomeController < ApplicationController
  def index
    @repository = client.repo 'trailblazer/trailblazer'
  end
end
