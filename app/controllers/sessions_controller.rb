class SessionsController < ApplicationController
    def new
        # Nothing to do here other than render new.html.erb
      end
    
      def create
        # Not using an instance variable since
        # we're not providing the user to a view
        user = User.find_by(email: params[:email])
        # Taking advantage of the && logical operator's
        # short-circuiting
        if user && user.authenticate(params[:password])
          # Successful log in!
          session[:user_id] = user.id
          # notice: is a special flash[:notice] accessor
          if user.account_type == "admin"
            redirect_to admin_path
          elsif user.account_type == "vendor"
            redirect_to vendor_path
          else
            redirect_to carrier_path
          end
        else
          # flash.now is used for messaging
          # during the CURRENT request
          flash.now.alert = 'Invalid login credentials - try again!'
          render :new
        end
        
      end
    
      def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out!"
      end
end
