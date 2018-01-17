class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def show
        @user = User.find(params[:id])
    end
    def index
        @users = User.all
    end
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "You are now signed up."
            redirect_to root_path
        else
            render :new
        end
    end
    private
    def user_params
        params.require(:user).permit(:email,:email_confirmation, :password, :password_confirmation, :account_type)
    end
end