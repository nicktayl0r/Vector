class VendorsController < ApplicationController
    def new
        @order = Order.new
    end
    def create
            @order = Order.new(order_params)
            if @order.save
              redirect_to vendor_path
            else
              render vendor_path
            end
    end
    private
    def order_params
        params.require(:order).permit(:origin, :destination)
    end
end
