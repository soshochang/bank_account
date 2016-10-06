require_relative 'bank_account'
RSpec.describe BankAccount do
  
  #Test_1
  it 'Has a method for retrieving the checking account balance' do
    #lets create two new projects
    user1 = BankAccount.new()
    user2 = BankAccount.new()
    #if we call elevator_pitch method we should expect to get that project name and description back
    expect(user1.return_checking).to eq(100)
    expect(user2.return_checking).to eq(100)
  end



  it 'Has a method that retrieves the total account balance' do

    user1 = BankAccount.new()
    user2 = BankAccount.new()

    expect(user1.return_total).to eq(200)
    expect(user2.return_total).to eq(200)

  end


  it 'Has a method that allows the user to withdraw cash' do

    user1 = BankAccount.new()
    user2 = BankAccount.new()

    expect(user1.withdraw_from_checking(50)).to eq(50)
    expect(user2.withdraw_from_checking(50)).to eq(50)

  end

  it 'Raises an error if a user tries to withdraw more money than they have in the account' do

    user1 = BankAccount.new()
    user2 = BankAccount.new()

    expect(user1.withdraw_from_checking(500)).to eq("Insufficient Funds!")
    expect(user2.withdraw_from_checking(500)).to eq("Insufficient Funds!")

  end

  it 'Raises an error when the user tries to print out how many bank accounts there are' do

    user1 = BankAccount.new()
    user2 = BankAccount.new()

    # expect(user1.account_count).to eq("")
    # expect(user2.account_count).to eq("")
    expect{user1.account_count}.to raise_error(NoMethodError)
    expect{user2.account_count}.to raise_error(NoMethodError)

  end

  it 'Raises an error when the user tries to set the interest rate' do

    user1 = BankAccount.new()
    user2 = BankAccount.new()

    # expect(user1.interest).to eq("")
    # expect(user2.interest).to eq("")
    expect{user1.interest}.to raise_error(NoMethodError)
    expect{user2.interest}.to raise_error(NoMethodError)

  end

  it 'Raises an error when the user tries to set any attribute' do

    user1 = BankAccount.new()
    user2 = BankAccount.new()

    expect{user1.interest}.to raise_error(NoMethodError)
    expect{user2.interest}.to raise_error(NoMethodError)

  end
end