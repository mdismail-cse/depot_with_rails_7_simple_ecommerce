module CurrentCart
  def set_cart
    if session[:cart_id]
      @cart = Cart.find_by(id: session[:cart_id])
    end

    unless @cart
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end

    @cart
  end
end

  