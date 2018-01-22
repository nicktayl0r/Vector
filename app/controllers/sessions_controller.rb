class SessionsController < ApplicationController
      def new
        # Nothing to do here other than render new.html.erb
      end
    
      def create
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          if user.account_type == "admin"
            redirect_to admin_path
          elsif user.account_type == "vendor"
            redirect_to vendor_path
          else
            redirect_to carrier_path
          end
        else
          flash.now.alert = 'Please Try Again'
          render :new
        end
      end
      def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out!"
      end
end
