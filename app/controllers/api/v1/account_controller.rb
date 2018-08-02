class Api::V1::AccountController < ApplicationController
  
  def create
    @account = Account.new(account_params)
    @account.bank_account_number = rand(10 ** 10).to_s.rjust(10,'0')  
    if @acount.save
    	render json:{message: "Account Created Sucessfully"},status:200
    else
    	render json:{error: "Account not created"},status:401
    end	
  end
  
  private

  def transfer_params
    params.require(:account).permit(:account_type, :balance, :status, :client_id, :bank_id)
  end

end
