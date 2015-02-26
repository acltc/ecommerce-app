class OrdersController < ApplicationController
  def update
    order = Order.find(params[:id])
    # order = Order.find_by(:user_id => current_user.id, :status => "carted")
    
    # code for charging credit card goes here

    order.update(:status => "purchased")

    flash[:success] = "Thanks for shopping!"
    redirect_to "/products"
  end
end

# Code for Jeff:
# product = Product.find(params[:product_id])
# quantity = params[:quantity].to_i
# order = Order.new(:quantity => quantity, :user_id => current_user.id, :product_id => product.id)
# order.subtotal = order.calculate_subtotal
# order.tax = order.calculate_tax
# order.total = order.calculate_total
# order.save