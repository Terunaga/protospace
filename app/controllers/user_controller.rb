class UserController < ApplicationController
  before_action :authenticate_user!, only: :edit
  def show
    @user = User.includes(:prototypes).find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    unless @user.id == current_user.id
      redirect_to :root
    end
  end

  def update
    current_user.update(update_params)
    redirect_to controller: :prototypes, action: :index
  end

  private
  def update_params
    params.require(:user).permit(:username, :email, :member, :profile, :works, :avatar)
  end

end
