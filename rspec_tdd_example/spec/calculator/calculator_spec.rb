require 'calculator'

describe Calculator do
  subject(:calc) { described_class.new }

 context '#sum' do
  it 'with positive numbers' do
    result = calc.sum(5, 7)
    expect(result).to eq(12)
  end

  it 'with negative and positive numbers' do
    result = calc.sum(-5, 7)
    expect(result).to eq(2)
  end

  it 'with negative numbers' do
    result = calc.sum(-5, -7)
    expect(result).to eq(-12)
  end
 end

 context '#div' do
  it 'divide by 0' do
    expect{
      calc.div(3, 0)
    }.to raise_error(ZeroDivisionError)

    expect{
      calc.div(3, 0)
    }.to raise_error("divided by 0")

    expect{
      calc.div(3, 0)
    }.to raise_error(/divided/)
  end
 end
end