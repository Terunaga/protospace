class LikesController < ApplicationController
  def create
    @prototype = Prototype.find(params[:prototype_id])
    @like = Like.where(user_id: current_user.id, prototype_id: params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
    like = current_user.likes.create(prototype_id: params[:prototype_id])
    like.save
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    @prototype = Prototype.find(params[:prototype_id])
    @like = Like.where(user_id: current_user.id, prototype_id: params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
  end
end