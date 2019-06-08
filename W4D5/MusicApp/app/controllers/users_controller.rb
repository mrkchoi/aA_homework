class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(email: params[:user][:email], password: params[:user][:password])

    if @user.save
      # redirect to homepage
      # login user (set as current_user)
      login!(@user)
      redirect_to bands_url
    else
      # render sign up page
      flash.now[:errors] = ["Email/Password not valid!"]
      render :new
    end
  end

  def show
    render :show
  end

  private

  def user_params
    params.require(:user).permit(:email, :password_digest, :session_token)
  end
end
