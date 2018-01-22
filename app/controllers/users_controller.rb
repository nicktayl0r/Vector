class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def show
        @user = User.find(params[:id])

    end
    def index
        @users = User.all
        @location = Location.new
        @order = Order.new
        
    end
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "You are now signed up."
            if @user.account_type == "admin"
                redirect_to admin_path
              elsif @user.account_type == "vendor"
                redirect_to vendor_path
              else
                redirect_to carrier_path
              end
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
        @user = User.find(params[:id])
        @user.destroy
        redirect_to root_path
    end
    private
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :account_type)
    end
end