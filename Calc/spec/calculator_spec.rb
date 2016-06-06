require 'calculator'

describe Calculator do
  it 'adds two numbers' do
    expect(Calculator.add(2, 3)).to eq 5
    expect(Calculator.add(6, 4)).to eq 10
    expect(Calculator.add(0, 0)).to eq 0
    expect(Calculator.add(-1, -1)).to eq -2
    expect(Calculator.add(Float::INFINITY, 0)).to eq Float::INFINITY
    expect(Calculator.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
  end

  it 'subtracts two numbers' do
    expect(Calculator.subtract(3, 2)).to eq 1
    expect(Calculator.subtract(6, 4)).to eq 2
    expect(Calculator.subtract(0, 0)).to eq 0
    expect(Calculator.subtract(-1, -1)).to eq 0
    expect(Calculator.subtract(Float::INFINITY, 0)).to eq Float::INFINITY
    expect(Calculator.subtract(Float::INFINITY, Float::INFINITY)).to be_nan
  end
end

describe Print do
  it 'pretty prints the answer' do
    expect(Print.print_answer(Calculator.subtract(3, 2))).to eq "The Answer is: 1"
    expect(Print.print_answer(6)).to eq "The Answer is: 6"
    expect(Print.print_answer(-1)).to eq "The Answer is: -1"
    expect(Print.print_answer(0)).to eq "The Answer is: 0"
    expect(Print.print_answer(Float::INFINITY)).to eq "The Answer is: Infinity"
  end
 end
