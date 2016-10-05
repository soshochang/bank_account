class BankAccount

    attr_accessor :account_number, :checking_balance, :savings_balance
	    @counter = 0


	class << self

		attr_accessor :counter

	end


 	def initialize
 		create_account_number
		@savings_balance = 3000
		@checking_balance = 4000
		@interest_rate = 0.02
		self.class.counter += 1
	 

    end

    def display_checking

	 puts @checking_balance

 	end

    def display_savings

	 puts @savings_balance

    end

    def deposit (account, money)

    	if account == "savings"
    		puts "deposit into savings account: #{@savings_balance +=money}"

    		
    	else 
	    	puts "deposit into checking account: #{@checking_balance +=money}"
	 

	    end

    end

    def withdraw (account, money)

    	if account == "savings"

    		if money <= @savings_balance
    			puts "Withdraw from savings account: #{money}, new balance: #{@savings_balance -=money}"

    		else
    			puts "Insufficient funds in savings account"

    		end
	    end

	    if account == "checking"
	    	if money <= @checking_balance
	    		puts "Withdraw from checking account: #{money}, new balance: #{@checking_balance -=money}"
	    	else
	    		puts "Insufficient funds in checking account"
	    	end
	    end

    end

    #accounts total without interest rate
  #   def display_both
		# puts "Your Checking Account balance is: #{@checking_balance}"
		# puts "Your Savings Account balance is: #{@savings_balance}"
		# puts "Total balance is: #{(@checking_balance + @savings_balance)}"
	
  #   end ________________________________________________________________________


    def display_both
		puts "Your Checking Account balance is: #{@checking_balance + (@checking_balance * @interest_rate)}"
		puts "Your Savings Account balance is: #{@savings_balance + (@savings_balance * @interest_rate)}"
		puts "Total balance is: #{(@checking_balance + @savings_balance) + ((@checking_balance+@savings_balance)) * @interest_rate}"
	
    end



    def account_info

	    puts "Your account number is: #{@account_number}"
		puts "Total balance is: #{(@checking_balance + @savings_balance) + ((@checking_balance+@savings_balance)) * @interest_rate}"
		puts "Your Checking Account balance is: #{@checking_balance + (@checking_balance * @interest_rate)}"
		puts "Your Savings Account balance is: #{@savings_balance + (@savings_balance * @interest_rate)}"
		puts "The interest rate is: #{@interest_rate}"
	

    end
  
    def count_accounts
		puts "There are a total of #{self.class.counter} accounts"
    end



    def display_account_number
		puts @account_number
	end


    private
    def create_account_number

  	   @account_number = Integer(rand.to_s[2..15])

    end

end

customer = BankAccount.new
# customer.display_savings
# customer.display_checking
# customer.deposit("savings", 100)
# customer.deposit("checking", 200)
# customer.withdraw("savings", 118)
# customer.withdraw("checking", 600)
# customer.display_account_number
customer.account_info


