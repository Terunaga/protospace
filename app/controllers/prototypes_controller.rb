class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.all
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  def new
    @prototype = Prototype.new
    @prototype.thumbnails.build
  end

  def create
    binding.pry
    @prototype = current_user.prototypes.new(create_params)
    if @prototype.save
      redirect_to :root and return
    else
      render action: :new
    end
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, thumbnails_attributes: [:name])
  end
end

