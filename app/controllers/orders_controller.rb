class OrdersController < ApplicationController

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
end
