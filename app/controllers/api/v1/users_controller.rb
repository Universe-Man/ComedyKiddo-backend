class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users.uniq
  end

  def create
    @user = User.new(get_params)
    @user.save
    @users = User.all
    render json: {allUsers: @users, newUser: @user}
  end

  def update
    # byebug
    @user = User.find(params[:id])
    @user.update(get_params)
    # @user.update!(get_params)
    @user.save
    @users = User.all
    render json: {allUsers: @users, newUser: @user}
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  private

  def get_params
    params.require(:user).permit(:name, :email, :password, :coach, :img_src, :source)
  end

end
