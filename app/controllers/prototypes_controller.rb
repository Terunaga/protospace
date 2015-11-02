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
    Prototype.create(create_params)
    redirect_to :root and return
  end

  private
  def create_params
    params.require(:prototype).require(:prototypes).permit(:title, :catch_copy, :concept).merge(user_id: current_user.id)
  end
end

