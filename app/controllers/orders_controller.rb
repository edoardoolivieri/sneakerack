class OrdersController < ApplicationController

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
    skip_authorization
  end

  def create
    shop = Snkshop.find(params[:snkshop_id])
    @order  = Order.create!(
                            snkshop_sku: shop.sku,
                            amount: shop.price,
                            state: 'pending',
                            user: current_user
                            )

    redirect_to new_order_payment_path(@order)
    authorize @order
  end
end
