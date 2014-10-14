class CartsController < ApplicationController
  def show
  end

  def add_item
    cart.add_item(params[:item_id])
    redirect_to categories_path
  end

  def remove_item
    cart.remove_item(params[:item_id])
    redirect_to cart_path
  end

  def update_quantity
    cart.update_quantity(params[:item_id], params[:quantity].to_i)
    redirect_to cart_path
  end
end
