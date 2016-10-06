class BankAccount
	@@accounts = 0
	@@intrest_rate = 12
    def initialize(acc_name)
    	@name = acc_name
    	@name.capitalize!
     	@checking_balance = 0
     	@savings_balance = 0
     	@account_id = gan
    	@@accounts = @@accounts + 1
    	puts "Your new account has been activated and your account id is #{@acount_id}"
    end

    def account_info
    	puts " _______________________________________ "
    	puts "|                                       |"
    	puts "|\t#{@name}'s Information\t\t|"
    	puts "|_______________________________________|"
    	puts "|                                       |"
    	puts "|Account ID:\t\t#{@account_id}\t|"
    	puts "|Total Balance:		#{total_balance}\t\t|"
    	puts "|Checking Balance:	#{@checking_balance}\t\t|"
    	puts "|Savings Balance:\t#{@savings_balance}\t\t|"
    	puts "|Intrest Rate:		#{@@intrest_rate}\t\t|"
    	puts "|_______________________________________|"
    end

############################################################################## TOTALS ########################################################################

    def self.total_accounts
    	puts "Now serving #{@@accounts} people"
    	@@accounts
    end

    def total_balance
    	@total_balance = @checking_balance + @savings_balance
    	@total_balance
    end

    def print_total_balance
    	puts total_balance
    end

############################################################################# CHECKING #######################################################################

    def checking_balance
    	puts @checking_balance
    	@checking_balance
    end    

    def checking_deposit(x)
    	@checking_balance = @checking_balance + x
    	self
    end

    def checking_withdraw(x)
    	@checking_balance = @checking_balance - x unless @checking_balance < x
    	puts "INSUFFICIENT FUNDS!" if @checking_balance < x
    	self
    end

############################################################################# SAVINGS #######################################################################

	def savings_balance
    	puts @savings_balance
    	@savings_balance
    end

    def savings_deposit(x)
    	@savings_balance = @savings_balance + x
    	self
    end

    def savings_withdraw(x)
    	puts "INSUFFICIENT FUNDS!" if @savings_balance < x
    	@savings_balance = @savings_balance - x unless @savings_balance < x
    	self
    end

    private

    def gan #Generate Account Number
    	@an = 1 + rand(999999999)
    	@an
    end
end

# Chris = BankAccount.new("Chris")
# Megan = BankAccount.new("Megan")

# puts "\nChecking:"
# Chris.checking_deposit(100).checking_withdraw(1050).checking_balance

# puts "\nSavings:"
# Chris.savings_deposit(100).savings_withdraw(105).savings_balance

# Chris.account_info

# BankAccount.total_accounts