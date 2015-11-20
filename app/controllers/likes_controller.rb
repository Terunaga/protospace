class LikesController < ApplicationController

  def create
    like = current_user.likes.create(prototype_id: params[:prototype_id])
    likes_set
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    likes_set
  end

  private
  def likes_set
    @prototype = Prototype.find(params[:prototype_id])
    @like = Like.find_by(user_id: current_user.id, prototype_id: params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
  end
end