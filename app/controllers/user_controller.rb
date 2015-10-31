class UserController < ApplicationController

  def index
  end

  def new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    current_user.update(update_params)
    redirect_to controller: :prototypes, action: :index
  end

  def create
  end

  private
  def update_params
    params.require(:user).permit(:username, :email, :member, :profile, :works, :avatar)
  end

end
