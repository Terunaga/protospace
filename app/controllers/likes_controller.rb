class LikesController < ApplicationController
  def create
    prototype = Prototype.find(params[:prototype_id])
    like = current_user.likes.create(prototype_id: prototype.id)
    like.save
    redirect_to controller: 'prototypes', action: 'show', id: params[:prototype_id]
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    redirect_to controller: 'prototypes', action: 'show', id: params[:prototype_id]
  end
end