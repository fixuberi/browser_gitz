class LikesController < ApplicationController

  def create
    @like = Like.new like_params
    @like.save
    response do |format|
      format.js
    end
  end

  def destroy
    @like = Like.where(entity_type: like_params[:entity_type])
                .find_by(entity_id: like_params[:entity_id])
    @like.destroy
    response do |format|
      format.js
    end
  end

  private

  def like_params
    params.permit(:entity_id, :entity_type)
  end
end
