class LocationsController < ApplicationController
    def new
        @location = Location.new
    end
    def index
        @locations = Location.all
    end
    def destroy
        @location = Location.find(params[:id])
        @location.destroy
        redirect_to locations_path
    end
    def show
        @location = Location.find(params[:id])
    end
    def edit
        @user = User.find(params[current_user.id])
        @location = Location.find(params[:id])
    end
    def create       
        @location = Location.new(location_params)
        @location.user_id = params[:user_id]
        if @location.save
            redirect_to user_locations_path(current_user.id)
        else
            render :new
        end
    end
    def update
        @location = Location.find(params[:id])
        if @location.update_attributes(location_params)
          redirect_to locations_path
        else
          render :edit
        end
    end
    private
    def location_params
        params.require(:location).permit(:street, :city, :phone, :zipcode, :state, :email)
    end
end
