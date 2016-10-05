class BankAccount


	attr_accessor :account_number, :checking, :saving
	@accounts = 0

	class << self
		attr_accessor :accounts
	end

	def initialize
    create_account 
    @checking = 1000
    @saving = 1000
    @interest_rate = 0.03
    self.class.accounts += 1 
    end

    def display_account_num
    	puts "\nThe account number is: #{@account_number}"
    end

    def display_checking
    	puts "\nThe checking balance is: $#{@checking}"
    end
    
    def display_saving
    	puts "\nThe saving balance is: $#{@saving}"
    end

    def deposit(amount, account)
    	if account == "saving"
    		@saving += amount
    		puts "\nDeposited.  Your saving balance is now: $#{@saving}"
    	else
    		@checking += amount
    		puts "\nDeposited.  Your checking balance is now: $#{@checking}"
    	end
    end

    def withdraw(amount, account)
    	if account == "saving"
    		if @saving - amount > 0
    			@saving -= amount
    			puts "\nWithdrawed $#{amount} and your saving balance is now: $#{@saving}"
    		else
    			puts "\nInsufficent funds!"
    		end
    	else
    		if @checking - amount > 0
    			puts "\nWithdrawed $#{amount} and your checking balance is now: $#{@checking}"
    		else
    			puts "\nInsufficent funds!"
    		end
    	end
    end

    def display_account
    	puts "\nYour current balance in the saving account is $#{@saving}"
    	puts "\nYour current balance in the checking account is $#{@checking}"
    end

    def display_accounts
    	puts "\nThere are #{self.class.accounts} account(s) in the bank"
    end

    def account_information
    	puts "\nThe account number is: #{@account_number}"
    	puts "The current balance in the saving account is $#{@saving}"
    	puts "The current balance in the checking account is $#{@checking}"
    	puts "The interest rate for your saving account is #{@interest_rate}%"
    end





    private

    attr_accessor :interest_rate

    def create_account
    	@account_number = rand(10 ** 10).to_s.rjust(10,'0')
    end



 end

 bob = BankAccount.new
 nick = BankAccount.new
 bob.display_account_num
 bob.display_checking
 bob.deposit(500, "checking")
 bob.withdraw(500, "checking")
 bob.withdraw(3000, "saving")
 bob.display_account
 nick.display_accounts
 bob.account_information