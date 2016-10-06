class BankAccount
	attr_accessor :account_number, :checking, :saving
	
	@@count = 0

	protected
	def initialize
	

		@checking = 100

		@saving = 100

		@@count += 1
	 
		@account_number_array = []
			for i in 1..10
				@account_number_array.push(rand(0..9))
			end
			@account_number = @account_number_array.join("")
	end

	private

	def interest
		@interest = 2
	end

	public
	

	def return_account_num
		puts @account_number
		# self
	end

	def return_checking
		puts @checking
		return @checking
		# self
	end

	def return_saving
		puts @saving
		return @saving
		# self
	end

	def deposit_to_checking(dep)
		@checking += dep
		# self
	end

	def deposit_to_saving(dep)
		@saving += dep
		# self
	end

	def withdraw_from_checking(dep)
		if @checking > dep
			@checking -= dep
			return @checking
		else
			puts "Insufficient Funds!"
			return "Insufficient Funds!"
		end
		# self
	end

	def withdraw_from_saving(dep)
		if @saving > dep
			@saving -= dep
			return @saving
		else
			puts "Insufficient Funds!"
			return "Insufficient Funds!"
		end
		# self
	end

	def return_total
		@total = @checking + saving
		puts @total
		return @total
		# self
	end

	
	def account_information
		puts "Account Number: #{@account_number}, Total Money: #{@total}, Checking Account Balance: #{@checking}, Savings Account Balance: #{@saving}, Interest Rate: #{@interest}, Total Number of Accounts: #{@@count} "
		return "Account Number: #{@account_number}, Total Money: #{@total}, Checking Account Balance: #{@checking}, Savings Account Balance: #{@saving}, Interest Rate: #{@interest}, Total Number of Accounts: #{@@count} "
		# self
	end

	private
	def account_count
		return "#{count}"
	end

end


# user1 = BankAccount.new
# user2 = BankAccount.new

# user1.return_account_num.return_checking.deposit_to_checking(5000).return_checking.withdraw_from_checking(100000)
# user2.account_information

