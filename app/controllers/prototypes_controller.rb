class PrototypesController < ApplicationController

  def index
    @prototypes = Prototype.all
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = current_user.prototypes.new(create_params)
    if @prototype.save
      redirect_to :root and return
    else
      redirect_to action: :new
    end
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept)
  end
end

