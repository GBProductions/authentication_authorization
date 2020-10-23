class UsersController < ApplicationController

    def new
      @user = User.new
    end

    def create
      @user = User.new
      if @user.save
        flash[:notice] = "you've successfully signed up!"
        session[:user_id] = @user.user_id
        redirect_to '/signup'
      end
    end

    private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  end