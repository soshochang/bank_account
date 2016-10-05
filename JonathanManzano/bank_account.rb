class BankAccount

  attr_writer :accNum, :name
  attr_accessor :chkBal, :savBal, :total

  @@count = 0



  private

  def initialize (name)
    @name = name
    @chkBal = 0
    @savBal = 0
    @accNum = bankNumGen
    @@count +=1
  end

  def interest
    @interest_rate = rand(0.1..10.9).to_f
  end

  def bankNumGen
    rand(9999999999999999999999)
  end



  public

  def checkBal
    puts "Current Checking Balance: $"+@chkBal.to_s
    self
  end

  def saveBal
    puts "Current Saving Balance: $"+@savBal.to_s
    self
  end

  def depositCheck(x)
    @chkBal +=x
    self
  end

  def depositSave(x)
    @savBal +=x
    self
  end

  def withdrawChk(x)
    if @chkBal > x
      @chkBal -=x
    else
      puts "\n\n!~YOU DO NOT HAVE ENOUGH IN YOUR #{@name.upcase} CHECKING ACCOUNT~!"
    end
    self
  end

  def withdrawSav(x)
    if @savBal > x
      @savBal -=x
    else
      puts "\n\n!~YOU DO NOT HAVE ENOUGH TO WITHDRAW IN YOUR #{@name.upcase} SAVING ACCOUNT~!"
    end
    self
  end

  # def total
  #   puts @total = @checkBal + @savBal
  #   self
  # end

  def account_information
    @total = @chkBal + @savBal
    puts "\n\n________"+@name.upcase+"________"
    checkBal
    saveBal
    puts "Interest Rate: " + interest.to_s + "%"
    puts "Account Number: "+@accNum.to_s
    puts "Total Balance: " + "$"+ @total.to_s
    puts "You currently have #{@@count} with us today!\n\n"
    self



  end
end

Chase = BankAccount.new("Chase")
Wells_Fargo = BankAccount.new("Wells Fargo")
Bank_of_America = BankAccount.new("Bank of America")
Citigroup = BankAccount.new("Citigroup")
Capital_One = BankAccount.new("Capital One")

Chase.depositCheck(500).withdrawChk(600).account_information
Wells_Fargo.depositCheck(3000).depositSave(50000).withdrawChk(399).account_information
Bank_of_America.depositCheck(4).withdrawChk(5).account_information
Citigroup.depositCheck(45).depositCheck(700).account_information
Capital_One.depositCheck(777).withdrawChk(69).depositSave(131313131313).withdrawSav(171717171717171717).account_information

# Chase.account_information