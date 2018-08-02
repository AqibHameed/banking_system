class Api::V1::TransferAgentController < ApplicationController

  def create
  	@transfer_agent = TransferAgent.new(transfer_agent_params)
  	if @transfer_agent.save
    	render json:{message: "Transfer Agent Created Sucessfully"},status:200
    else
    	render json:{error: "Transfer Agent not created"},status:401
    end	
  end

  private

  def transfer_agent_params
    params.require(:transfer_agent).permit(:first_name, :last_name, :address, :phone_number, :email, :bank_id)
  end

end
