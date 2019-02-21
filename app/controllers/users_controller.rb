class UsersController < ApplicationController
  def show() end

  def edit
    @user = User.find(params[:id])
  end

  def update
    current_user.update(user_params)
    redirect_to current_user
  end

  private

  def user_params
    params[:user][:phone].to_i
    params.require(:user).permit(:name, :username, :website, :bio, :email, :phone, :gender)
  end
end
