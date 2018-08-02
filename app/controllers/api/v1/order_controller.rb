class Api::V1::OrderController < ApplicationController

  def create
  	@order = Order.new(order_params)
  	@order.update(order_time: DateTime.now)
  	if @order.save
    	render json:{message: "Order Created Sucessfully"},status:200
    else
    	render json:{error: "Order not created"},status:401
    end	

  end

  private

  def order_params
    params.require(:order).permit(:client_id, :transfer_agent_id)
  end

end
