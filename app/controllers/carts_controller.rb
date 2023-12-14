class CartsController < ApplicationController
  def add_to_cart
    product = Product.find(params[:product_id])
    current_user.carts.create(product: product)
    redirect_to root_path, notice: "Product added to cart successfully"
  end
  def show
    @cart_items = current_user.carts.includes(:product)
  end
  def remove_from_cart
    product = Product.find(params[:product_id])
    current_user.carts.find_by(product: product).destroy
    redirect_to cart_path, notice: "Product removed from cart successfully"
  end
  
end
