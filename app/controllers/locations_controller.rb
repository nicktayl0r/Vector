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
        @location = Location.find(params[:id])
    end
    def create
        @location = Location.new(location_params)
        if @location.save
            redirect_to vendor_path
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
