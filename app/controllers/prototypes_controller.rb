class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.includes(:thumbnails)
  end

  def show
    @prototype = Prototype.includes(:thumbnails).find(params[:id])
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
    @prototype = Prototype.find(params[:id])
  end

  def update
    @prototype = Prototype.find(params[:id])
    @prototype.update(update_params)
    redirect_to :root
  end

  def destroy
    prototype = Prototype.find(params[:id])
    prototype.destroy
    redirect_to :root
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, thumbnails_attributes: [:name, :status, :prototype_id])
  end

  def update_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, thumbnails_attributes: [:name, :status, :prototype_id])
  end
end

