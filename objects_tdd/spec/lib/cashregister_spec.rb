require 'rspec'
require_relative '../../lib/cash_register'

describe CashRegister do
  it 'should exist' do
    expect(subject).to be_a(CashRegister)
  end
end
describe '#total' do
  it 'should print a formatted total line' do
    subject = CashRegister.new
    test_string = '$0.00'
    expect(subject.total).to eq(test_string)
  end
end
describe '#purchase(amount)' do
  context 'effect of purchase on total method' do
    it 'should add the purchase amount to the total' do
      subject = CashRegister.new
      subject.purchase(3.78)
      test_string = '$3.78'
      expect(subject.total).to eq(test_string)
    end
  end
  context 'effect of purchase on output' do
    it 'should output a string with the purchase and the total' do
      subject = CashRegister.new
      test_string = 'purchase($3.78) # => $3.78'
      expect(subject.purchase(3.78)).to eq(test_string)
    end
  end
end
describe '#pay(amount)' do
  context 'effect of payment on total method' do
    it 'should subtract the pay amount from the total' do
      subject = CashRegister.new
      subject.purchase(5)
      subject.pay(4)
      test_string = '$1.00'
      expect(subject.total).to eq(test_string)
    end
  end
  context 'effect of payment on output' do
    context 'when paid in full' do
      it 'should show a total of 0' do
        subject = CashRegister.new
        subject.purchase(4)
        test_string = 'pay($4.00) # => $0.00'
        expect(subject.pay(4)).to eq(test_string)
      end
    end
    context 'when overpaid' do
      it 'should make change' do
        subject = CashRegister.new
        subject.purchase(4)
        test_string = 'pay($5.00) # => Your change is $1.00'
        expect(subject.pay(5)).to eq(test_string)
      end
    end
    context 'when partial payment is made' do
      it 'should show an amount due' do
        subject = CashRegister.new
        subject.purchase(4)
        test_string = 'pay($2.00) # => Your new total is $2.00'
        expect(subject.pay(2)).to eq(test_string)
      end
    end
  end
end
