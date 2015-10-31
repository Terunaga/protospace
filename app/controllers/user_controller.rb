class UserController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
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
