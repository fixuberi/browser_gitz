class GitUserFacade

  attr_reader :user, :likes

  def initialize(name, client)
    @user  = client.user name
    @likes = Like.where(entity_type: "contrib").pluck(:entity_id)
  end

end