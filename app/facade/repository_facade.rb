class RepositoryFacade

  attr_reader :repository, :likes

  def initialize(full_name, client)
    @repository = client.repo full_name
    @likes  = Like.where(entity_type: "contrib").pluck(:entity_id)
  end

  def contributors
    repository.rels[:contributors].get.data
  end

end
