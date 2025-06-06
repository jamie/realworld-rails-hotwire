class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if (@user = User.authenticate_by(authentication_params))
      sign_in @user
      redirect_to root_url, notice: "You're now signed in."
    else
      flash.now[:alert] = "Invalid email or password."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    sign_out
    # 303 See Other forces verb to GET, seems required for Turbo
    redirect_to root_url, status: :see_other, notice: "You're now signed out."
  end

  private

  def authentication_params
    {
      email: params[:user][:email],
      password: params[:user][:password]
    }
  end
end
