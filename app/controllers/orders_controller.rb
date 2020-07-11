class OrdersController < ApplicationController
  def index
    if params[:query].present?
      @pagy, @orders = pagy(Order.where("order_name ILIKE ?", "%#{params[:query]}%"))
    else
      @pagy, @orders = pagy(Order.all)
    end
  end
  
end
