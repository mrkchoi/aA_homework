class SessionsController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if @user
      login!(@user)
      redirect_to bands_url
    else
      flash.now[:errors] = ["Email/password not valid"]
      render :new
    end
  end

  def destroy
    @user = User.find_by(session_token: session[:session_token])
    if @user.nil?
      render :new
    else
      logout!(@user)
      redirect_to new_user_url
    end
    # logout user
  end

end
