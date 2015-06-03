class OrderSummaryController < ApplicationController
  def show
	@current_order_items = current_order.order_items
	total_price = 0
	@current_order_items.each do |coi|
		total_price += coi.unit_price*coi.quantity.to_i
	end
	@total_price = total_price
	@order_delivery_address = session[:delivery_address]
	puts "-------------------------------------------------"
	puts @order_delivery_address[:id].to_s
  end
end
