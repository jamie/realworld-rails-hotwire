class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    # 303 See Other forces verb to GET, seems required for Turbo
    redirect_to root_url, status: :see_other
  end
end
