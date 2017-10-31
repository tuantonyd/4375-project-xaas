class AdminController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
  def index
    # Post.paginate(:page => params[:page], :per_page => 30)
    @orders = Order.where(order_status: 1).paginate(:page => params[:page])
     @states_with_orders = Order.joins(:state).pluck(:state_id, :state_name).uniq #Get states that have an order
     @unavailable_inventory = Admin.unavailable_inventory
  end



end
