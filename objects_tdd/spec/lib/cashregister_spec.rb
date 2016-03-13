require 'rspec'
require_relative '../../lib/cashregister'

describe CashRegister do
  it 'should exist' do
    expect(subject).to be_a(CashRegister)
  end
  it 'should print a formatted total line' do
    subject.total = 2.45
    test_string = 'total # => $2.45'
    expect(subject.total).to eq(test_string)
  end
  it 'should add the purchase amount to the total' do
    subject.total = 0.0
    subject.purchase(3.78)
    test_string = 'total # => $3.78'
    expect(subject.total).to eq(test_string)
  end
  it 'should output a string with the purchase and the total' do
    subject.total = 0.0
    test_string = 'purchase($3.78) # => $3.78'
    expect(subject.purchase(3.78)).to eq(test_string)
  end
  it 'should subtract the pay amount from the total' do
    subject.total = 5.0
    test_string = 'pay($5.00) # => $0.00'
    expect(subject.pay(5)).to eq(test_string)
  end
  it 'should make change if the pay amount is more than the total' do
    subject.total = 15
    test_string = 'pay($20.00) # => Your change is $5.00'
    expect(subject.pay(20)).to eq(test_string)
  end
  it 'should give a new total if the payment is insufficient' do
    subject.total = 18
    test_string = 'pay($15.00) # => Your new total is $3.00'
    expect(subject.pay(15)).to eq(test_string)
  end
end
