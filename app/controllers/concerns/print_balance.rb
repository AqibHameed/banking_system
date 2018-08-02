module PrintBalance
  extend ActiveSupport::Concern

  #script​ ​ will​ ​ print​ ​ the​ ​ balance​ ​ of​ ​ every​ ​ account​ ​ before​ ​ and​ ​ after the​ ​ transfers​
  def file_write(balance_status, account_number, balance)
    target  = "./app/controllers/concerns/show_me_the_money.rb"
    content = <<-RUBY
           puts balance_status + "   #{account_number} #{account}"
    RUBY

    File.open(target, "w+") do |f|
       f.write(content)
    end
  end

  #​print the history​ ​of​ ​the​ ​transfer​ ​amount of​ bank.
  def print_history_of_bank(transfers, bank_name)
  	  target  = "./app/controllers/concerns/show_me_the_money.rb"
      content = <<-RUBY
  	      puts "History of #{bank_name}"
  	      transfers.map{|transfer| puts "SenderAccountNumber #{transfer.account_number} ReceiverAccount_number #{transfer.account.account_number} AmountTransfer #{transfer.amount}"}
      RUBY

      File.open(target, "w+") do |f|
        f.write(content)
      end 
  end	

end