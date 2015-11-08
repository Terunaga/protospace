class PrototypesController < ApplicationController

  before_action :common_code, only: [:edit, :update, :destroy]

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
  end

  def update
    binding.pry
    @prototype.update(update_params)
    redirect_to :root
  end

  def destroy
    @prototype.destroy
    redirect_to :root
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, thumbnails_attributes: [:name, :status])
  end

  def update_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, thumbnails_attributes: [:name, :status])
  end

  def common_code
    @prototype = Prototype.find(params[:id])
  end
end

