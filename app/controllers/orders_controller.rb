class OrdersController < ApplicationController
    before_action :set_house, only: [:show, :edit, :update, :destroy]
    # Prevent anonymous users from 
    # performing CUD on houses
    before_action :authorize, except: [:index, :show]
    def new
        @order = Order.new
    end
    def index
        @orders = Order.all
    end
    def show
        @order = Order.find(params[:id])
    end
    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to orders_path
    end
    def edit
        @order = Order.find(params[:id])
    end
    def create
        @order = Order.new(order_params)

        if @order.save
            redirect_to orders_path
        else
            render :new
        end
    end
    def update
        @order = Order.find(params[:id])
        if @order.update_attributes(order_params)
            redirect_to orders_path
        else
            render :edit
        end
    end
    private
    def order_params
        params.require(:order).permit(:order_no, :cubic_meters, :weight, :order_status, :ask, :vendor, :driver, :delivery_deadline, :delivery_timestamp)
    end
end