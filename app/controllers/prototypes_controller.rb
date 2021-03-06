class PrototypesController < ApplicationController

  before_action :set_prototype, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit]

  def index
    @prototypes = Prototype.includes(:thumbnails).order('likes_count DESC').page(params[:page])
  end

  def newest
    @prototypes = Prototype.includes(:thumbnails).order('created_at DESC').page(params[:page])
  end

  def show
    @prototype = Prototype.includes(:thumbnails).find(params[:id])
    @like = Like.find_by(user_id: @prototype.user_id, prototype_id: params[:id])
    @likes = Like.where(prototype_id: params[:id])
    @comment = Comment.new
    @comments = Comment.where(prototype_id: params[:id]).order('created_at ASC')
  end

  def new
    @prototype = Prototype.new
    @prototype.thumbnails.build
  end

  def create
    @prototype = current_user.prototypes.new(create_params)
    if @prototype.save
      redirect_to :root and return
    else
      render action: :new
    end
  end

  def edit
    unless @prototype.user_id == current_user.id
      redirect_to :root
    end
  end

  def update
    @prototype.update(update_params)
    redirect_to :root
  end

  def destroy
    @prototype.destroy
    redirect_to :root
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, thumbnails_attributes: [:name, :status]).merge(tag_list: params[:prototype][:tag])
  end

  def update_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, thumbnails_attributes: [:id, :name, :status]).merge(tag_list: params[:prototype][:tag])
  end

  def set_prototype
    @prototype = Prototype.find(params[:id])
  end
end

