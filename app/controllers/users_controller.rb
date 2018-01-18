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

    def edit
        @user = User.find(params[:id])        
    end
    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            redirect_to users_path
        else
            render :edit
        end
    end
    def destroy
        puts "destroy called for user #{params[:id]}"
        @user = User.find(params[:id])
        @user.destroy
        redirect_to root_path
    end
    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :account_type)
    end
end