class OrdersController < ApplicationController
    belongs_to :carrier
    belongs_to :vendor
end
