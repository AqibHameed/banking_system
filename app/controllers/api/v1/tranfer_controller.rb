class Api::V1::TranferController < ApplicationController
  include PrintBalance

  def create
  	 errors = []
  	 transfer = Transfer.new(transfer_params)
  	 sender_account = transfer.client.accounts.where(send_account_number: params[:sender_account_number])
  	 receiver_account = trasfer.account
  	 sender_bank_name = sender_account.bank.name
  	 receiver_bank_name = transfer.bank.name 
  	 if sender_account.balance >= amount.to_f # Check Sender Account Balance have required transfer amount
		 if sender_bank_name != receiver_bank_name # Inter-bank​​ ​ transfers
		 	comission = 5
			  if params[:transfer][:amount] <= 1000 && (sender_account.balance >= (amount.to_f + comission))
			  	  sender_deduction_amount = amount.to_f + comission
			      remaining_balance = sender_account.amount - sender_deduction_amount
			      #Print Balnce befor transfer in show_me_the_mooney.rb file 
			      file_write("Sender Account Balance Before Transfer", sender_account.account_number, sender_account.balance)
			      sender_account.update(balance: remaining_balance)
			      file_write("Sender Account Balance After Transfer", sender_account.account_number, sender_account.balance)

			      file_write("Receiver Account Balance Before Transfer", receiver_account.account_number, receiver_account.balance)
			      receiver_account.update(balance: amount.to_f)
			      file_write("Receiver Account Balance After Transfer", receiver_account.account_number, receiver_account.balance)
			      
			      transfer.update(status: 0)
			  else
			  	 errors << "Inter bank transfer condition not fulfill"
			  end	
		 else # Intra-bank​​ ​ transfers
		 	 
		 	 file_write("Sender Account Balance Before Transfer", sender_account.account_number, sender_account.balance)
		     sender_account.update(balance: amount.to_f)
		     file_write("Sender Account Balance After Transfer", sender_account.account_number, sender_account.balance)
			 
             file_write("Receiver Account Balance Before Transfer", receiver_account.account_number, receiver_account.balance)
			 receiver_account.update(balance: amount.to_f) 
			 file_write("Receiver Account Balance After Transfer", receiver_account.account_number, receiver_account.balance) 
			 
			 transfer.update(status: 0)
		 end	
	else # Sender account has less money in their account 
		errors << "Sender account has not required money to transfer"
	end	 
	if errors.empty?
		transfer.update(transfer_time: DateTime.now)
		transfer.save
		render json:{message: "Transaction done Sucessfully"},status:401
	else
		render json:{errors:@errors.flatten},status:401
	end	

  end

  def history_of_bank
  	   bank = Bank.find(params[:bank_id])
  	   transfers = bank.transfers
  	   print_history_of_bank(transfers, bank.name)
  end	

  def amount_transfer_confirmation
  	  transfer = Transfer.where(sender_account_number: params[:account_number]).last
  	  if transfer.status == 0
  	  	 render json:{message: "Transaction done Sucessfully"},status:200
  	  else
  	  	render json:{error: "Transaction failure"},status:401
  	  end	
  end	

  private
  
  def transfer_params
    params.require(:transfer).permit(:amount, :sender_account_number, :account_id, :client_id, :order_id, :bank_id)
  end
end
