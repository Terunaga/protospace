class LikesController < ApplicationController
  def create
    prototype = Prototype.find(params[:format])
    like = current_user.likes.build(prototype_id: prototype.id)
    like.save
    redirect_to controller: 'prototypes', action: 'show', id: params[:format]
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    redirect_to :root
  end
end