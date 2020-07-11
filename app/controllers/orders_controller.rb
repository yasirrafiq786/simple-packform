class OrdersController < ApplicationController
  def index
    if params[:query].present?
      @orders = Order.where("order_name ILIKE ?", "%#{params[:query]}%")
    else
      @orders = Order.all
    end
  end
   
end
