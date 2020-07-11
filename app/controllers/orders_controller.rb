class OrdersController < ApplicationController
  def index
    if params[:query].present?
      @pagy, @orders = pagy(Order.where("order_name ILIKE ?", "%#{params[:query]}%"), items: 5)
    else
      @pagy, @orders = pagy(Order.all, items: 5)
    end
  end
  
end