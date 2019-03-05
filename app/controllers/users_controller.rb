class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = current_user.posts.order(created_at: :desc)
  end

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
    params.require(:user).permit(:name, :username, :website, :bio, :email, :phone, :gender, :avatar)
  end
end
