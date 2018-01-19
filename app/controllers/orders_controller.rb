class OrdersController < ApplicationController
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
        @order.user_id = params[:user_id]
        if @order.save
            redirect_to user_orders_path(current_user.id)
        else
            render :new
        end
    end
    def update
        @order = Order.find(params[:id])
        if @order.update_attributes(order_params)
            redirect_to user_orders_path
        else
            render :edit
        end
    end
    private
    def order_params
        params.require(:order).permit(:origin, :destination, :delivery_deadline, :price, :weight, :cube)
    end
end