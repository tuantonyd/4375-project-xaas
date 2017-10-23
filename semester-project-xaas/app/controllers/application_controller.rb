class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def get_cart_items
    @items = Array.new
    cookies.each do |cookie|
      if (cookie[0].include? "item_")
        item_id = cookie[1]
        @items << Item.find(cookie[1])
      end
    end
    return @items
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

end
