class OrdersController < ApplicationController
  def index
    if params[:query].present? && (params[:start_date].present? && params[:end_date].present?)
      @pagy, @orders = pagy(Order.where("order_name ILIKE ? AND (created_at >= ? AND created_at <= ?)", "%#{params[:query]}%", params[:start_date].to_datetime, params[:end_date].to_datetime), items: 5)
    elsif params[:query].present?
      @pagy, @orders = pagy(Order.where("order_name ILIKE ?", "%#{params[:query]}%"), items: 5)
    elsif params[:start_date].present? && params[:end_date].present?
      @pagy, @orders = pagy(Order.where("created_at >= ? AND created_at <= ?", params[:start_date].to_datetime, params[:end_date].to_datetime ), items: 5)
    else
      @pagy, @orders = pagy(Order.all, items: 5)
    end
    
    respond_to do |format|
      format.html
      format.js { render :index}
    end
  end
  
end
