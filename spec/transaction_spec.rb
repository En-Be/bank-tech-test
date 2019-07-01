# frozen_string_literal: true

describe Transaction do
  it 'has an initialize method with four parameters' do
    expect(Transaction).to respond_to(:new).with(4).arguments
  end

  it 'can have information read' do
    transaction = Transaction.new('1/1/1', 'deposit', 1, 12)
    expect(transaction.date).to eq('1/1/1')
    expect(transaction.type).to eq('deposit')
    expect(transaction.amount).to eq('1.00')
    expect(transaction.balance).to eq('12.00')
  end
end
