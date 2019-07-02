# frozen_string_literal: true

describe Transaction do
  it 'has an initialize method with four parameters' do
    expect(Transaction).to respond_to(:new).with(4).arguments
  end

  it 'can have information read' do
    transaction = Transaction.new('deposit', 1, 12)
    expect(transaction.date).to eq(Time.now.strftime('%x'))
    expect(transaction.type).to eq('deposit')
    expect(transaction.amount).to eq(1)
    expect(transaction.balance).to eq(12)
  end
end
