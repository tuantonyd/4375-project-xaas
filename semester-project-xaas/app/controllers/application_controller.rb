class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  def get_cart_items
    @items = []
    cookies.each do |cookie|
      if (cookie[0].include? "item_")
        item_id = cookie[1]
        @items << Item.find(cookie[1])
      end
    end
    return @items
  end

  def get_cart_total
    @items = get_cart_items
    total = 0.0
    @items.each do |item|
      total = item.price + total
    end
    return total
  end

  def del_cookies
    cookies.each do |cookie|
      if (cookie[0].include? "item_")
        if cookies.delete cookie[0], domain: "localhost"
          puts "Cookie deleted"
          cookies[:itemsInCart] = 0
        end
      end
    end
  end


  def configure_permitted_parameters
    logger.warn("Permitted parameters:")
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :city, :state_id, :stripeToken])
  end

end
