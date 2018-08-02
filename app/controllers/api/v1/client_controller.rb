class Api::V1::ClientController < ApplicationController

  def create

  	@client = Client.new(client_params)
  	if @client.save
    	render json:{message: "Client Record Created Sucessfully"},status:200
    else
    	render json:{error: "Client Record not created"},status:401
    end	

  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :addres)
  end

end
