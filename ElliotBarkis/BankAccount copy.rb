class BankAccount
	attr_accessor :accountNumber, :checking, :savings
	@numberOfAccounts = 0

	class << self
		attr_accessor :numberOfAccounts

	def initialize
		generateAccountNumber
		@checking = 0
		@savings = 0
		self.class.numberOfAccounts += 1
		@interestRate = 0.01
	end

	def account_number
		puts "Account Number: #{ @accountNumber }"
	end

	def checking_balance
		puts "Checking Account Balance: #{ @checking }"
	end

	def savings_balance
		puts "Saving Account Balance: #{ @saving }"
	end

	def deposit amount, account
		if account == "savings" 
			then puts "Deposit into savings account"; @savings += amount
		else
			then puts "Deposit into checking account"; @checking += amount
	end

	def withdraw amount, account
		if acount == "savings"
			if amount < @savings
				then puts "Withdrew from savings"; @savings -= amount
			else
				then puts "Insufficient Funds"
			end
		else
			if amount < @checking
				then puts "Withdrew from checking"; @checking -= amount
			else
				then puts "Insufficient Funds"
			end
		end
	end

	def money_totals
		puts "Savings Account: #{ @savings + ( @savings * @interestRate ) }"
		puts "Checking Account: #{ @checking + ( @checking * @interestRate ) }"
		puts "Total Monies: #{ @checking + ( @checking * @interestRate ) + @savings + ( @savings * @interestRate ) }"

	def account_information
		puts "Account Number: #{ @accountNumber }"
		puts "Total Monies: #{ @checking + ( @checking * @interestRate ) + @savings + ( @savings * @interestRate ) }"
		puts "Checking Account: #{ @checking + ( @checking * @interestRate ) }"
		puts "Savings Account: #{ @savings + ( @savings * @interestRate ) }"
		puts "Interest Rate: #{@interestRate}"
	end

	private
	attr_accessor :interestRate

	def generateAccountNumber
		@accountNumber = rand.to_s[2..9]
	end

end