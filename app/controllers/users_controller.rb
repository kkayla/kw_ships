class UsersController < ApplicationController
  def index
    @users= User.all
  end

  def new
    @user = User.new
  end

  def create
    if @user = User.create(user_params)
      redirect_to users_path
    else
      redirect_to new_user_path
      end
    end

  def current_user
    @current_user= session[:user_id]
  end

  def show
    @user= User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  if @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to user_path(@user)
  else
    redirect_to
    edit_user_path(@user)
    end
  end

  def destroy
    @user= User.find(params[:id])
    @user.destroy
    session.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:fname, :lname, :username, :email, :password)
  end
end
