# frozen_string_literal: true

describe Bank do
  it 'can deposit an amount' do
    subject.deposit(100)
    expect(subject.transactions[0]).to be_instance_of(Transaction)
  end
end
