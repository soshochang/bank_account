require_relative 'bank_account'
RSpec.describe BankAccount do

	it 'has a method checking_balance and retrieves balance' do
		BankAccount1 = BankAccount.new("BankAccount1")
		BankAccount1.checking_balance
		expect(BankAccount1.checking_balance).to eq(0)
	end

	it 'has a method total_balance and retrieves balance' do
		BankAccount1 = BankAccount.new("BankAccount1")
		BankAccount1.total_balance
		expect(BankAccount1.total_balance).to eq(0)
	end

	it 'has a method deposit and returns balance' do
		BankAccount1 = BankAccount.new("BankAccount1")
		BankAccount1.checking_deposit(20)
		BankAccount1.total_balance
		expect(BankAccount1.total_balance).to eq(20)
	end

	it 'has a method withdraws and returns balance' do
		BankAccount1 = BankAccount.new("BankAccount1")
		BankAccount1.checking_withdraw(20)
		BankAccount1.total_balance
		expect(BankAccount1.total_balance).to eq(0)
	end

	it 'has a method withdraws and returns nothing if number is too large' do
		BankAccount1 = BankAccount.new("BankAccount1")
		BankAccount1.checking_withdraw(20)
		BankAccount1.total_balance
		expect(BankAccount1.total_balance).to eq(0)
	end

	it 'returns error when calling accoutns' do
		BankAccount1 = BankAccount.new("BankAccount1")
		BankAccount1.accounts
		expect(BankAccount1.accounts).to eq(1)
	end

	it 'returns error when calling intrest rate' do
		BankAccount1 = BankAccount.new("BankAccount1")
		BankAccount1.intrest_rate
		expect(BankAccount1.intrest_rate).to eq(12)
	end

	it 'returns error when calling a normal value' do
		BankAccount1 = BankAccount.new("BankAccount1")
		BankAccount1.name
		expect(BankAccount1.name).to eq("BankAccount1")
	end

end