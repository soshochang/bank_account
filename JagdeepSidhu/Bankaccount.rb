class BankAccount
  attr_accessor :account_number, :checking_balance, :savings_balance


  def initialize
    @savings_balance = 0
    @checking_balance = 0
    @interest_rate = 0.0275
  end

  def account_number
    rand(10000000000000000)
  end

  def checkingBalance
    puts "Your Checking Account balance is #{@checking_balance}"
  end

  def savingsBalance
    puts " Your Saving Account balance is #{@savings_balance}"
  end

  def deposit(amount, account)
    if account == "savings"
      @savings_balance +=amount
    elsif account == "checking"
      @checking_balance+=amount
    else
      puts "Not an Account cannot deposit"
    end
  end

  def withdraw(amount,account)
    if account == "savings"
      if amount < @savings_balance
        @savings_balance-= amount
      else
        puts "Sorry Funds in Savings Account is not enough"
      end
    elsif account == "checking"
      if amount < @checking_balance
        @checking_balance -= amount
      else
        puts "Sorry Funds in Checking Account is not enough"
      end
    else
      puts "Not an Account cannot withdraw"
    end
  end

  def account_information
    puts "Your account number is: #{account_number}"
    puts "Your Total Balace is #{(@savings_balance+@checking_balance) +((@checking_balance+@savings_balance))*@interest_rate}"
    puts "Your Savings Account Balance is #{@savings_balance + (@savings_balance*@interest_rate)}"
    puts "Your Checking Account Balance is #{@checking_balance + (@checking_balance*@interest_rate)}"
    puts "The interest rate is #{@interest_rate}"
  end

  private
  attr_accessor :interest_rate
end

account1=BankAccount.new
account1.deposit(20, "savings")
account1.withdraw(20, "sav")
account1.account_information
puts "_________________"
account1.withdraw(20, "checking")
account1.deposit(32, "check")
account1.deposit(50, "checking")
account1.account_information
puts "_________________"
account2=BankAccount.new
account2.account_information


