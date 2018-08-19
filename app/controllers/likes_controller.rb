class LikesController < ApplicationController

  def create
    Like.create like_params
  end

  def destroy
    @like = Like.where(entity_type: like_params[:entity_type])
                .find_by(entity_id: like_params[:entity_id])
    @like.destroy
  end

  private

  def like_params
    params.permit(:entity_id, :entity_type)
  end
end
