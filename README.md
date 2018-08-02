# README

# app/controllers/api/v1/account_controller
 In this controllers new Account create api is define

# app/controllers/api/v1/bank_controller
 In this controllers new Bank record create api is define

# app/controllers/api/v1/client_controller
 In this controllers new Client create api is define

# app/controllers/api/v1/order_controller
 In this controllers new Order record Record create api is define

# app/controllers/api/v1/transfer_controller
 In this controllers in create function the transfer amount between the account  api is define.In case of Inter-Bank transfer 5€ commision is dedeucted from sender accunt and also 1000€ limitation is applied and therir is no commission and limitation in case of Intra-Bank.
 Also print the balance of account before and after transfer in the show_me_the_money.rb file

 *Function history_of_bank

 In this function the​ ​ history​ ​ of​ ​ the​ ​ transfer​ ​of​ ​the​ bank api is define which  print the account number and balance in the show_me_the_money.rb file

 *amount_transfer_confirmation

 In this function ​the agent ​assures that ​everybody ​gets ​their ​money

# app/controllers/api/v1/transfer_agent_controller
 In this controllers new agent record create api is define

* In concern the common function of contoller is written

# app/controllers/concerns/print_balnce
   This script​ ​ will​ ​ print​ ​ the​ ​ balance​ ​ of​ ​ every​ ​ account​ ​ before​ ​ and​ ​ after the​ ​ transfers​ ​ and​ ​ the​ ​ history​ ​ of​ ​ the​ ​ transfer​ ​ of​ ​ every​ ​ bank.

   *file_write
     This function will​ ​ print​ ​ the​ ​ balance​ ​ of​ ​ every​ ​ account​ ​ before​ ​ and​ ​ after the​ ​ transfers​ in the show_me_the_money.rb file 

   *print_history_of_bank
     This function will print the history​ ​of​ ​the​ ​transfer​ ​amount of​ bank.  

# app/controllers/concerns/show_me_the_money.rb
  This file contain the content of printed result such as account and their balance befor and after transfer amount and also the history of​ ​the​ transfer​ of​ ​banks

#app/models
 In models​ ​ the relationship between the model is define

# routes.rb
  In this file path of api routes is define       

