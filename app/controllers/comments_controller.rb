class CommentsController < ApplicationController
  def create
    comment = current_user.comments.create(create_params)
    # @comment = Comment.new
    @comments = Comment.where(prototype_id: params[:prototype_id]).order('created_at ASC')
    # redirect_to controller: 'prototypes', action: 'show', id: params[:prototype_id]
  end

  private
  def create_params
    prototype = params[:prototype_id]
    params.require(:comment).permit(:text).merge(prototype_id: prototype)
  end
end

