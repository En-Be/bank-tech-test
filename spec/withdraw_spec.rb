# frozen_string_literal: true

describe Bank do
  it 'can withdraw an amount' do
    subject.withdraw(100)
    expect(subject.transactions[0]).to be_instance_of(Transaction)
  end

  # it 'cannot withdraw more than balance' do
  #   Bank.deposit(50)
  #   expect{Bank.withdraw(60)}.to raise_error("You don't have enough funds")
  # end
end
