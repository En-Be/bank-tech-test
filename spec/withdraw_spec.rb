# frozen_string_literal: true

describe Bank do
  it 'can withdraw an amount' do
    expect(subject.withdraw(100)).to eq('You withdrew 100')
  end

  # it 'cannot withdraw more than balance' do
  #   Bank.deposit(50)
  #   expect{Bank.withdraw(60)}.to raise_error("You don't have enough funds")
  # end
end
