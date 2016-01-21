class SessionsController < ApplicationController
  #we don't need an index page because you don't want to list everyones sessions. we just need new create and destroy
  def new
    @user = User.where(email: params[:email].first)
  end

  def create
    byebug
    @user= User.where(email: params[:email].first)
    if @user.password == params[:password]
      session[:user_id] = @user.id
      redirect_to user_path(@user)
      #if the email fits the parameters i set and it matches email go.
    else
      render login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
