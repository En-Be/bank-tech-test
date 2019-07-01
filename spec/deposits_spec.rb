# frozen_string_literal: true

describe Bank do
  it 'can deposit an amount' do
    expect(subject.deposit(100)).to eq('You deposited 100')
  end
end
