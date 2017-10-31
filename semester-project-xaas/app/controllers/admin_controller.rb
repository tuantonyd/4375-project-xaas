class AdminController < ApplicationController
  before_action :authenticate_admin!
  def index
    # Post.paginate(:page => params[:page], :per_page => 30)
    @orders = Order.where(order_status: "Placed").paginate(:page => params[:page])
    @unavailable_inventory = Item.where(available: false)
     @item_popularity = OrderContent.select(:qty, :name).joins(:item).group(:name).sum(:qty)
     @item_popularity_state = OrderContent.joins(:item).joins(:order).joins(:state).group(:state_name, :name).sum(:qty)
     @states_with_orders = Order.pluck(:state_id).uniq
     @states_with_orders.each do |state|
      logger.warn(Order.where(state_id: state).joins(:order_contents).joins(:items).group(:qty, :id).sum("order_contents.qty").to_json)
     end
     #@item_popularity = OrderContent.all
    logger.warn(@item_popularity)

  end

  def state_report(state)

  end


end
