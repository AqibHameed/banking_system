class Api::V1::BankController < ApplicationController

  def create

  	@bank = Bank.new(bank_params)
  	if @bank.save
    	render json:{message: "Bank Record Created Sucessfully"},status:200
    else
    	render json:{error: "Bank Record not created"},status:401
    end	

  end

  private

  def bank_params
    params.require(:bank).permit(:name, :address, :zip_code, :country)
  end

end
