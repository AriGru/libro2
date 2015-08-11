class SessionsController < ApplicationController
  def new
    @user = User.new
  end

def destroy
  session[:user_id] = nil
  @current_user = nil
  redirect_to root_path
  return
end

def index
end

  def create
    @user = User.
    find_by(username: params[:username]).
    try(:authenticate, params[:password])

    if @user
      session[:user_id] = @user.id
      redirect_to books_path
    else
      render action: 'new'
    end
  end
end
